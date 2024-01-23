part of '../blocs.dart';

class AskTheExpertBloc extends Bloc<AskTheExpertEvent, AskTheExpertState> {
  AskTheExpertBloc() : super(AskTheExpertInitial()) {
    on<SetAskTheExpertState>((event, emit) => emit(event.state ?? _askTheExpertDataLoaded));

    on<SetAskTheExpertToInitial>((event, emit) => emit(AskTheExpertInitial()));

    on<InitializeAskTheExpertData>((event, emit) async {
      try {
        _tanyaAhlis = await ApiHelper.get(
          '/api/tanyaahli',
        ).then((value) => (value.data['data'] as List).map((e) => TanyaAhli.fromJson(e)).toList());
      } catch (e) {
        emit(AskTheExpertError());
        return;
      }

      emit(_askTheExpertDataLoaded);
    });
  }

  List<TanyaAhli> _tanyaAhlis = [];

  AskTheExpertDataLoaded get _askTheExpertDataLoaded => AskTheExpertDataLoaded(
        tanyaAhlis: _tanyaAhlis,
      );
}
