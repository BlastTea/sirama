part of '../blocs.dart';

class FavInfografisBloc extends Bloc<FavInfografisEvent, FavInfografisState> {
  FavInfografisBloc() : super(FavInfografisInitial()) {
    on<SetFavInfografisState>(
        (event, emit) => emit(event.state ?? _favInfografisDataLoaded));

    on<SetFavInfografisToInitial>((event, emit) => emit(FavInfografisInitial()));

    on<InitializeFavInfografisData>((event, emit) async {
      try {
        _favinfografisList = await ApiHelper.get('/api/favinfografis').then(
            (value) => (value.data['data'] as List)
                .map((e) => FavInfografis.fromJson(e))
                .toList());
      } catch (e) {
        emit(FavInfografisError());
        return;
      }

      emit(_favInfografisDataLoaded);
    });
  }

  List<FavInfografis> _favinfografisList = [];

  FavInfografisDataLoaded get _favInfografisDataLoaded => FavInfografisDataLoaded(
        favinfografiss: _favinfografisList,
      );
}
