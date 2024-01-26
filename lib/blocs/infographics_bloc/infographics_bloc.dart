part of '../blocs.dart';

class InfographicsBloc extends Bloc<InfographicsEvent, InfographicsState> {
  InfographicsBloc() : super(InfographicsInitial()) {
    on<SetInfographicsState>((event, emit) => emit(event.state ?? _infographicsDataLoaded));

    on<SetInfographicsToInitial>((event, emit) => emit(InfographicsInitial()));

    on<InitializeInfographicsData>((event, emit) async {
      try {
        await ApiHelper.get('/api/infografis');
      } catch (e) {
        emit(InfographicsError());
        return;
      }

      emit(_infographicsDataLoaded);
    });
  }

  InfographicsDataLoaded get _infographicsDataLoaded => InfographicsDataLoaded(
    
  );
}
