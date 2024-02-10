part of '../blocs.dart';

class FavVideoEdukasiBloc extends Bloc<FavVideoEdukasiEvent, FavVideoEdukasiState> {
  FavVideoEdukasiBloc() : super(FavVideoEdukasiInitial()) {
    on<SetFavVideoEdukasiState>(
        (event, emit) => emit(event.state ?? _favVideoEdukasiDataLoaded));

    on<SetFavVideoEdukasiToInitial>((event, emit) => emit(FavVideoEdukasiInitial()));

    on<InitializeFavVideoEdukasiData>((event, emit) async {
      try {
        _favVideoEdukasiList = await ApiHelper.get('/api/fav-video-edukasi').then(
            (value) => (value.data['data'] as List)
                .map((e) => FavVideoEdukasi.fromJson(e))
                .toList());
      } catch (e) {
        emit(FavVideoEdukasiError());
        return;
      }

      emit(_favVideoEdukasiDataLoaded);
    });
  }

  List<FavVideoEdukasi> _favVideoEdukasiList = [];

  FavVideoEdukasiDataLoaded get _favVideoEdukasiDataLoaded => FavVideoEdukasiDataLoaded(
        favvideoedukasis: _favVideoEdukasiList,
      );
}
