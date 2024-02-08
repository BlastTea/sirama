part of '../blocs.dart';

class FavFilmBloc extends Bloc<FavFilmEvent, FavFilmState> {
  FavFilmBloc() : super(FavFilmInitial()) {
    on<SetFavFilmState>(
        (event, emit) => emit(event.state ?? _favFilmDataLoaded));

    on<SetFavFilmToInitial>((event, emit) => emit(FavFilmInitial()));

    on<InitializeFavFilmData>((event, emit) async {
      try {
        _favfilmList = await ApiHelper.get('/api/favfilm').then(
            (value) => (value.data['data'] as List)
                .map((e) => FavFilmVideo.fromJson(e))
                .toList());
      } catch (e) {
        emit(FavFilmError());
        return;
      }

      emit(_favFilmDataLoaded);
    });
  }

  List<FavFilmVideo> _favfilmList = [];

  FavFilmDataLoaded get _favFilmDataLoaded => FavFilmDataLoaded(
        favfilms: _favfilmList,
      );
}
