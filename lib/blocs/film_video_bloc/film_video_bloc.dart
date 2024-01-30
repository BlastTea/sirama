part of '../blocs.dart';

class FilmVideoBloc extends Bloc<FilmVideoEvent, FilmVideoState> {
  FilmVideoBloc() : super(FilmVideoInitial()) {
    on<SetFilmVideoState>((event, emit) => emit(event.state ?? _filmVideoDataLoaded));

    on<SetFilmVideoToInitial>((event, emit) => emit(FilmVideoInitial()));

    on<InitializeFilmVideoData>((event, emit) async {
      try {
        _films = await ApiHelper.get('/api/film').then((value) => (value.data['data'] as List).map((e) => Film.fromJson(e)).toList());

        emit(_filmVideoDataLoaded);

        await for (Film film in Stream.fromIterable(_films)) {
          String? id = Uri.parse(film.linkFilm ?? '').queryParameters['v'];

          if (id == null) continue;

          try {
            film.thumbnailImageData = await ApiHelper.getBytesUri(Uri.parse('https://i.ytimg.com/vi/$id/maxresdefault.jpg')).then((value) => value.data);
          } catch (e) {
            // Ignored, really
          }
          if (film.thumbnailImageData == null) {
            try {
              film.thumbnailImageData = await ApiHelper.getBytesUri(Uri.parse('https://i.ytimg.com/vi/$id/hqdefault.jpg')).then((value) => value.data);
            } catch (e) {
              // Ignored, really
            }
          }
          emit(_filmVideoDataLoaded);
        }
      } catch (e) {
        emit(FilmVideoError());
        return;
      }

      emit(_filmVideoDataLoaded);
    });
  }

  List<Film> _films = [];

  FilmVideoDataLoaded get _filmVideoDataLoaded => FilmVideoDataLoaded(
        films: _films,
      );
}
