part of '../blocs.dart';

class AskTheExpertBloc extends Bloc<AskTheExpertEvent, AskTheExpertState> {
  AskTheExpertBloc() : super(AskTheExpertInitial()) {
    on<SetAskTheExpertState>((event, emit) => emit(event.state ?? _askTheExpertDataLoaded));

    on<SetAskTheExpertToInitial>((event, emit) => emit(AskTheExpertInitial()));

    on<InitializeAskTheExpertData>((event, emit) async {
      try {
        await ApiHelper.get('/tanyaahli');
      } catch (e) {
        emit(AskTheExpertError());
        return;
      }

      emit(_askTheExpertDataLoaded);
    });
  }

  AskTheExpertDataLoaded get _askTheExpertDataLoaded => AskTheExpertDataLoaded();
}
