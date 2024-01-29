part of '../blocs.dart';

class FilmVideoBloc extends Bloc<FilmVideoEvent, FilmVideoState> {
  FilmVideoBloc() : super(FilmVideoInitial()) {
    on<SetFilmVideoState>((event, emit) => emit(event.state ?? _filmVideoDataLoaded));

    on<SetFilmVideoToInitial>((event, emit) => emit(FilmVideoInitial()));

    on<InitializeFilmVideoData>((event, emit) async {
      try {
        _filmVideoList = await ApiHelper.get('/api/film').then((value) =>
            (value.data['data'] as List)
                .map((e) => Film.fromJson(e))
                .toList());
      } catch (e) {
        emit(FilmVideoError());
        return;
      }

      emit(_filmVideoDataLoaded);
    });
  }

  List<Film> _filmVideoList = [];

  FilmVideoDataLoaded get _filmVideoDataLoaded => FilmVideoDataLoaded(
    filmvideo : _filmVideoList
  );
}
