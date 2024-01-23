part of '../blocs.dart';

class FilmVideoBloc extends Bloc<FilmVideoEvent, FilmVideoState> {
  FilmVideoBloc() : super(FilmVideoInitial()) {
    on<SetFilmVideoState>((event, emit) => emit(event.state ?? _FilmVideoDataLoaded));

    on<SetFilmVideoToInitial>((event, emit) => emit(FilmVideoInitial()));

    on<InitializeFilmVideoData>((event, emit) async {
      try {
        await ApiHelper.get('/filmvideo');
      } catch (e) {
        emit(FilmVideoError());
        return;
      }

      emit(_FilmVideoDataLoaded);
    });
  }

  FilmVideoDataLoaded get _FilmVideoDataLoaded => FilmVideoDataLoaded();
}
