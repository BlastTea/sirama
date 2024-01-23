part of '../blocs.dart';

class AskTheExpertBloc extends Bloc<AskTheExpertEvent, AskTheExpertState> {
  AskTheExpertBloc() : super(AskTheExpertInitial()) {
    on<SetAskTheExpertState>((event, emit) => emit(event.state ?? _askTheExpertDataLoaded));

    on<SetAskTheExpertToInitial>((event, emit) => emit(AskTheExpertInitial()));

    on<InitializeAskTheExpertData>((event, emit) async {
      try {
        _topikPertanyaans = await ApiHelper.get('/api/topikpertanyaan').then((value) => (value.data['data'] as List).map((e) => TopikPertanyaan.fromJson(e)).toList());
        _tanyaAhlis = await ApiHelper.get('/api/tanyaahli').then((value) => (value.data['data'] as List).map((e) => TanyaAhli.fromJson(e)).toList());
      } catch (e) {
        emit(AskTheExpertError());
        return;
      }

      emit(_askTheExpertDataLoaded);
    });

    on<SetSelectedTopikPertanyaan>((event, emit) {
      _selectedTopikPertanyaan = event.index;
      _pageController.animateToPage(event.index, duration: kDurationShort4, curve: Curves.fastOutSlowIn);
      emit(_askTheExpertDataLoaded);
    });
  }

  final PageController _pageController = PageController();

  List<TopikPertanyaan> _topikPertanyaans = [];

  //TODO: change _tanyaAhlis field into 2D list
  List<TanyaAhli> _tanyaAhlis = [];

  int _selectedTopikPertanyaan = 0;

  AskTheExpertDataLoaded get _askTheExpertDataLoaded => AskTheExpertDataLoaded(
        pageController: _pageController,
        topikPertanyaans: _topikPertanyaans,
        tanyaAhlis: _tanyaAhlis,
        selectedTopikPertanyaan: _selectedTopikPertanyaan,
      );
}
