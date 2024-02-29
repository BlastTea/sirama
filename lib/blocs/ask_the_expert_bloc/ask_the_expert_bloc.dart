part of '../blocs.dart';

class AskTheExpertBloc extends Bloc<AskTheExpertEvent, AskTheExpertState> {
  AskTheExpertBloc() : super(AskTheExpertInitial()) {
    on<SetAskTheExpertState>((event, emit) => emit(event.state ?? _askTheExpertDataLoaded));

    on<SetAskTheExpertToInitial>((event, emit) => emit(AskTheExpertInitial()));

    on<InitializeAskTheExpertData>((event, emit) async {
      if (event.completer == null) emit(AskTheExpertInitial());

      try {
        _topikPertanyaans = await ApiHelper.get('/api/topikpertanyaan').then((value) => (value.data['data'] as List).map((e) => TopikPertanyaan.fromJson(e)).toList());
        _tanyaAhlis = List.generate(_topikPertanyaans.length, (index) => []);

        List<JawabanAhli> jawabanAhlis = await ApiHelper.get('/api/jawabanahli').then((value) => (value.data['data'] as List).map((e) => JawabanAhli.fromJson(e)).toList());

        await ApiHelper.get('/api/tanyaahli').then((value) {
          List<TanyaAhli> ahlis = (value.data['data'] as List).map((e) => TanyaAhli.fromJson(e)).toList();
          for (TanyaAhli tanyaAhli in ahlis) {
            tanyaAhli.jawabanAhli = jawabanAhlis.trySingleWhere((element) => element.tanyaAhliId == tanyaAhli.idTanyaAhli);
            int topikIndex = _topikPertanyaans.indexWhere((element) => element.idJenisTopikPertanyaan == tanyaAhli.topikId);
            _tanyaAhlis[topikIndex].add(tanyaAhli);
          }
        });
      } catch (e) {
        event.completer?.complete(false);
        emit(AskTheExpertError());
        ApiHelper.handleError(e);
        return;
      }

      event.completer?.complete(true);
      emit(_askTheExpertDataLoaded);
    });

    on<SetSelectedTopikPertanyaan>((event, emit) {
      _selectedTopikPertanyaan = event.index;

      emit(_askTheExpertDataLoaded);
    });

    on<SetSelectedInputTopikPertanyaan>((event, emit) {
      _selectedInputTopikPertanyaan = event.index;
      emit(_askTheExpertDataLoaded);
    });

    on<SendAskTheExpertPressed>((event, emit) async {
      if (_textControllerQuestion.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Pertanyaan masih kosong')));
        return;
      }

      TanyaAhli tanyaAhli;

      try {
        FocusManager.instance.primaryFocus?.unfocus();

        showLoadingDialog();

        tanyaAhli = await ApiHelper.post(
          '/api/tanyaahli',
          body: {
            'topik_id': _topikPertanyaans[_selectedTopikPertanyaan].idJenisTopikPertanyaan,
            'pertanyaan': _textControllerQuestion.text.trim(),
          },
        ).then((value) => TanyaAhli.fromJson(value.data['data']));
      } catch (e) {
        NavigationHelper.back();
        emit(_askTheExpertDataLoaded);
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();
      _tanyaAhlis[_selectedInputTopikPertanyaan!].add(tanyaAhli);
      NavigationHelper.toReplacement(
        MaterialPageRoute(
          builder: (context) => ChatAskTheExpertPage(
            topicIndex: _selectedInputTopikPertanyaan!,
            index: _tanyaAhlis[_selectedInputTopikPertanyaan!].length - 1,
          ),
        ),
      );
      emit(_askTheExpertDataLoaded);
    });
  }

  final TextEditingController _textControllerTopic = TextEditingController();
  final TextEditingController _textControllerQuestion = TextEditingController();

  List<TopikPertanyaan> _topikPertanyaans = [];

  List<List<TanyaAhli>> _tanyaAhlis = [];

  int _selectedTopikPertanyaan = 0;
  int? _selectedInputTopikPertanyaan;

  AskTheExpertDataLoaded get _askTheExpertDataLoaded => AskTheExpertDataLoaded(
        textControllerTopic: _textControllerTopic,
        textControllerQuestion: _textControllerQuestion,
        topikPertanyaans: _topikPertanyaans,
        tanyaAhlis: _tanyaAhlis,
        selectedTopikPertanyaan: _selectedTopikPertanyaan,
        selectedInputTopikPertanyaan: _selectedInputTopikPertanyaan,
      );
}
