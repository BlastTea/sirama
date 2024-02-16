part of '../blocs.dart';

class FilmBloc extends Bloc<FilmEvent, FilmState> {
  FilmBloc() : super(FilmInitial()) {
    on<SetFilmVideoState>((event, emit) => emit(event.state ?? _filmVideoDataLoaded));

    on<SetFilmToInitial>((event, emit) => emit(FilmInitial()));

    on<InitializeFilmData>((event, emit) async {
      try {
        _films = await ApiHelper.get('/api/film').then((value) => (value.data['data'] as List).map((e) => Film.fromJson(e)).toList());

        await for (Film film in Stream.fromIterable(_films)) {
          film.thumbnailImageData = await getYoutubeThumbnailImageData(uri: Uri.parse(film.linkFilm ?? ''));
        }
      } catch (e) {
        emit(FilmError());
        return;
      }

      emit(_filmVideoDataLoaded);
    });
  }

  List<Film> _films = [];

  FilmDataLoaded get _filmVideoDataLoaded => FilmDataLoaded(
        films: _films,
      );
}
