part of '../blocs.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteInitial()) {
    on<SetFavoriteState>((event, emit) => emit(event.state ?? _favoriteDataLoaded));

    on<SetFavoriteToInitial>((event, emit) => emit(FavoriteInitial()));

    on<InitializeFavoriteData>((event, emit) async {
      emit(FavoriteInitial());

      try {
        _favFilms = await ApiHelper.get('/api/favfilm').then((value) async {
          List<FavFilm> results = [];
          await for (dynamic e in Stream.fromIterable(value.data['data'])) {
            FavFilm favFilm = FavFilm.fromJson(e);
            favFilm.film = Film.fromJson(e);
            favFilm.film?.thumbnailImageData = await getYoutubeThumbnailImageData(uri: Uri.parse(favFilm.film?.linkFilm ?? ''));
            results.add(favFilm);
          }
          return results;
        });
        _favPodcasts = await ApiHelper.get('/api/favpodcast').then((value) async {
          List<FavPodcast> results = [];
          await for (dynamic e in Stream.fromIterable(value.data['data'])) {
            FavPodcast favPodcast = FavPodcast.fromJson(e);
            favPodcast.podcast = Podcast.fromJson(e);
            favPodcast.podcast?.thumbnailImageData = await getYoutubeThumbnailImageData(uri: Uri.parse(favPodcast.podcast?.linkPodcast ?? ''));
            results.add(favPodcast);
          }
          return results;
        });
        _favVideoEdukasis = await ApiHelper.get('/api/fav-video-edukasi').then((value) async {
          List<FavVideoEdukasi> results = [];
          await for (dynamic e in Stream.fromIterable(value.data['data'])) {
            FavVideoEdukasi favVideoEdukasi = FavVideoEdukasi.fromJson(e);
            favVideoEdukasi.videoEdukasi = VideoEdukasi.fromJson(e);
            favVideoEdukasi.videoEdukasi?.thumbnailImageData = await getYoutubeThumbnailImageData(uri: Uri.parse(favVideoEdukasi.videoEdukasi?.linkVideoEdukasi ?? ''));
            results.add(favVideoEdukasi);
          }
          return results;
        });
        _favInfografis = await ApiHelper.get('/api/favinfografis').then((value) => (value.data['data'] as List).map((e) {
              FavInfografis favInfografis = FavInfografis.fromJson(e);
              favInfografis.infografis = Infografis.fromJson(e);
              return favInfografis;
            }).toList());
      } catch (e) {
        emit(FavoriteError());
        return;
      }

      emit(_favoriteDataLoaded);
    });
  }

  List<FavFilm> _favFilms = [];
  List<FavPodcast> _favPodcasts = [];
  List<FavVideoEdukasi> _favVideoEdukasis = [];
  List<FavInfografis> _favInfografis = [];

  FavoriteDataLoaded get _favoriteDataLoaded => FavoriteDataLoaded(
        favFilms: _favFilms,
        favPodcasts: _favPodcasts,
        favVideoEdukasis: _favVideoEdukasis,
        favInfografis: _favInfografis,
      );
}
