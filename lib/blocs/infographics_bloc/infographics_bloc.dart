part of '../blocs.dart';

class InfographicsBloc extends Bloc<InfographicsEvent, InfographicsState> {
  InfographicsBloc() : super(InfographicsInitial()) {
    on<SetInfographicsState>(
        (event, emit) => emit(event.state ?? _infographicsDataLoaded));

    on<SetInfographicsToInitial>((event, emit) => emit(InfographicsInitial()));

    on<InitializeInfographicsData>((event, emit) async {
      try {
        _infographicsList = await ApiHelper.get('/api/infografis').then((value) =>
            (value.data['data'] as List)
                .map((e) => Infografis.fromJson(e))
                .toList());
      } catch (e) {
        emit(InfographicsError());
        return;
      }

      emit(_infographicsDataLoaded);
    });
  }
  List<Infografis> _infographicsList = [];

  InfographicsDataLoaded get _infographicsDataLoaded =>
      InfographicsDataLoaded(
        infografis: _infographicsList
      );
}
