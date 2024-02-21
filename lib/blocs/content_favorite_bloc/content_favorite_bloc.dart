part of '../blocs.dart';

class ContentFavoriteBloc extends Bloc<ContentFavoriteEvent, ContentFavoriteState> {
  ContentFavoriteBloc() : super(ContentFavoriteInitial()) {
    on<SetContentFavoriteState>((event, emit) => emit(event.state ?? _contentFavoriteDataLoaded));

    on<SetContentFavoriteToInitial>((event, emit) => emit(ContentFavoriteInitial()));

    on<InitializeContentFavoriteData>((event, emit) async {
      emit(ContentFavoriteInitial());

      try {
        // Film
        _films = await ApiHelper.get('/api/film').then((value) async {
          List<FavFilm> results = [];
          await for (dynamic e in Stream.fromIterable(value.data['data'])) {
            FavFilm favFilm = FavFilm.fromJson(e);
            favFilm.film = Film.fromJson(e);
            favFilm.film?.thumbnailImageData = await getYoutubeThumbnailImageData(uri: Uri.parse(favFilm.film?.linkFilm ?? ''));
            results.add(favFilm);
          }
          return results;
        });
        List<FavFilm> favFilms = await ApiHelper.get('/api/favfilm').then((value) => (value.data['data'] as List).map((e) {
              FavFilm favFilm = FavFilm.fromJson(e);
              favFilm.film = Film.fromJson(e);
              return favFilm;
            }).toList());
        _films = _films.map((e) {
          FavFilm? favFilm = favFilms.trySingleWhere((element) => element.film?.idFilm == e.film?.idFilm);

          if (favFilm == null) return e;

          return favFilm.copyWith(film: e.film!.copyWith(isFavorited: true));
        }).toList();

        // Podcast
        _podcasts = await ApiHelper.get('/api/podcast').then((value) async {
          List<FavPodcast> results = [];
          await for (dynamic e in Stream.fromIterable(value.data['data'])) {
            FavPodcast favPodcast = FavPodcast.fromJson(e);
            favPodcast.podcast = Podcast.fromJson(e);
            favPodcast.podcast?.thumbnailImageData = await getYoutubeThumbnailImageData(uri: Uri.parse(favPodcast.podcast?.linkPodcast ?? ''));
            results.add(favPodcast);
          }
          return results;
        });
        List<FavPodcast> favPodcasts = await ApiHelper.get('/api/favpodcast').then((value) => (value.data['data'] as List).map((e) {
              FavPodcast favPodcast = FavPodcast.fromJson(e);
              favPodcast.podcast = Podcast.fromJson(e);
              return favPodcast;
            }).toList());
        _podcasts = _podcasts.map((e) {
          FavPodcast? favPodcast = favPodcasts.trySingleWhere((element) => element.podcast?.idPodcast == e.podcast?.idPodcast);

          if (favPodcast == null) return e;

          return favPodcast.copyWith(podcast: e.podcast!.copyWith(isFavorited: true));
        }).toList();

        // Video Edukasi
        _videoEdukasis = await ApiHelper.get('/api/videoedukasi').then((value) async {
          List<FavVideoEdukasi> results = [];
          await for (dynamic e in Stream.fromIterable(value.data['data'])) {
            FavVideoEdukasi favVideoEdukasi = FavVideoEdukasi.fromJson(e);
            favVideoEdukasi.videoEdukasi = VideoEdukasi.fromJson(e);
            favVideoEdukasi.videoEdukasi?.thumbnailImageData = await getYoutubeThumbnailImageData(uri: Uri.parse(favVideoEdukasi.videoEdukasi?.linkVideoEdukasi ?? ''));
            results.add(favVideoEdukasi);
          }
          return results;
        });
        List<FavVideoEdukasi> favVideoEdukasis = await ApiHelper.get('/api/fav-video-edukasi').then((value) => (value.data['data'] as List).map((e) {
              FavVideoEdukasi favVideoEdukasi = FavVideoEdukasi.fromJson(e);
              favVideoEdukasi.videoEdukasi = VideoEdukasi.fromJson(e);
              return favVideoEdukasi;
            }).toList());
        _videoEdukasis = _videoEdukasis.map((e) {
          FavVideoEdukasi? favVideoEdukasi = favVideoEdukasis.trySingleWhere((element) => element.videoEdukasi?.idVideoEdukasi == e.videoEdukasi?.idVideoEdukasi);

          if (favVideoEdukasi == null) return e;

          return favVideoEdukasi.copyWith(videoEdukasi: e.videoEdukasi!.copyWith(isFavorited: true));
        }).toList();

        // Infografis
        _infografis = await ApiHelper.get('/api/infografis').then((value) => (value.data['data'] as List).map((e) {
              FavInfografis favInfografis = FavInfografis.fromJson(e);
              favInfografis.infografis = Infografis.fromJson(e);
              return favInfografis;
            }).toList());
        List<FavInfografis> favInfografiss = await ApiHelper.get('/api/favinfografis').then((value) => (value.data['data'] as List).map((e) {
              FavInfografis favInfografis = FavInfografis.fromJson(e);
              favInfografis.infografis = Infografis.fromJson(e);
              return favInfografis;
            }).toList());
        _infografis = _infografis.map((e) {
          FavInfografis? favInfografis = favInfografiss.trySingleWhere((element) => element.infografis?.idInfografis == e.infografis?.idInfografis);

          if (favInfografis == null) return e;

          return favInfografis.copyWith(infografis: e.infografis!.copyWith(isFavorited: true));
        }).toList();
      } catch (e) {
        emit(ContentFavoriteError());
        return;
      }

      emit(_contentFavoriteDataLoaded);
    });

    on<InitializeEditFilmData>((event, emit) {
      _currentFilm = event.favFilm;
      emit(_contentFavoriteDataLoaded);
    });

    on<ToggleFilmFavoritePressed>((event, emit) async {
      try {
        if (_currentFilm!.film!.isFavorited) {
          _currentFilm = await ApiHelper.delete('/api/favfilm/${_currentFilm!.idFavFilm}').then((value) => FavFilm(film: _currentFilm!.film!.copyWith(isFavorited: false, totalLikes: _currentFilm!.film!.totalLikes! - 1)));
        } else {
          _currentFilm = await ApiHelper.post('/api/favfilm/${_currentFilm!.film!.idFilm}').then((value) => FavFilm.fromJson(value.data['data']).copyWith(film: _currentFilm!.film!.copyWith(isFavorited: true, totalLikes: _currentFilm!.film!.totalLikes! + 1)));
        }
      } catch (e) {
        return;
      }

      int index = _films.indexWhere((element) => element.film!.idFilm == _currentFilm!.film!.idFilm);
      _films[index] = _currentFilm!.copyWith();
      emit(_contentFavoriteDataLoaded);
    });

    on<InitializeEditPodcastData>((event, emit) {
      _currentPodcast = event.favPodcast;
      emit(_contentFavoriteDataLoaded);
    });

    on<TogglePodcastFavoritePressed>((event, emit) async {
      try {
        if (_currentPodcast!.podcast!.isFavorited) {
          _currentPodcast = await ApiHelper.delete('/api/favpodcast/${_currentPodcast!.idFavPodcast}').then((value) => FavPodcast(podcast: _currentPodcast!.podcast!.copyWith(isFavorited: false, totalLikes: _currentPodcast!.podcast!.totalLikes! - 1)));
        } else {
          _currentPodcast = await ApiHelper.post('/api/favpodcast/${_currentPodcast!.podcast!.idPodcast}').then((value) => FavPodcast.fromJson(value.data['data']).copyWith(podcast: _currentPodcast!.podcast!.copyWith(isFavorited: true, totalLikes: _currentPodcast!.podcast!.totalLikes! + 1)));
        }
      } catch (e) {
        return;
      }

      int index = _podcasts.indexWhere((element) => element.podcast!.idPodcast == _currentPodcast!.podcast!.idPodcast);
      _podcasts[index] = _currentPodcast!.copyWith();
      emit(_contentFavoriteDataLoaded);
    });

    on<InitializeEditVideoEdukasiData>((event, emit) {
      _currentVideoEdukasi = event.favVideoEdukasi;
      emit(_contentFavoriteDataLoaded);
    });

    on<ToggleVideoEdukasiFavoritePressed>((event, emit) async {
      try {
        if (_currentVideoEdukasi!.videoEdukasi!.isFavorited) {
          _currentVideoEdukasi = await ApiHelper.delete('/api/fav-video-edukasi/${_currentVideoEdukasi!.idFavVideoEdukasi}').then((value) => FavVideoEdukasi(videoEdukasi: _currentVideoEdukasi!.videoEdukasi!.copyWith(isFavorited: false, totalLikes: _currentVideoEdukasi!.videoEdukasi!.totalLikes! - 1)));
        } else {
          _currentVideoEdukasi = await ApiHelper.post('/api/fav-video-edukasi/${_currentVideoEdukasi!.videoEdukasi!.idVideoEdukasi}').then((value) => FavVideoEdukasi.fromJson(value.data['data']).copyWith(videoEdukasi: _currentVideoEdukasi!.videoEdukasi!.copyWith(isFavorited: true, totalLikes: _currentVideoEdukasi!.videoEdukasi!.totalLikes! + 1)));
        }
      } catch (e) {
        return;
      }

      int index = _videoEdukasis.indexWhere((element) => element.videoEdukasi!.idVideoEdukasi == _currentVideoEdukasi!.videoEdukasi!.idVideoEdukasi);
      _videoEdukasis[index] = _currentVideoEdukasi!.copyWith();
      emit(_contentFavoriteDataLoaded);
    });

    on<InitializeEditInfografisData>((event, emit) {
      _currentInfografis = event.favInfografis;
      emit(_contentFavoriteDataLoaded);
    });

    on<ToggleInfografisFavoritePressed>((event, emit) async {
      try {
        if (_currentInfografis!.infografis!.isFavorited) {
          _currentInfografis = await ApiHelper.delete('/api/favinfografis/${_currentInfografis!.idFavInfografis}').then((value) => FavInfografis(infografis: _currentInfografis!.infografis!.copyWith(isFavorited: false, totalLikes: _currentInfografis!.infografis!.totalLikes! - 1)));
        } else {
          _currentInfografis = await ApiHelper.post('/api/favinfografis/${_currentInfografis!.infografis!.idInfografis}').then((value) => FavInfografis.fromJson(value.data['data']).copyWith(infografis: _currentInfografis!.infografis!.copyWith(isFavorited: true, totalLikes: _currentInfografis!.infografis!.totalLikes! + 1)));
        }
      } catch (e) {
        return;
      }

      int index = _infografis.indexWhere((element) => element.infografis!.idInfografis == _currentInfografis!.infografis!.idInfografis);
      _infografis[index] = _currentInfografis!.copyWith();
      emit(_contentFavoriteDataLoaded);
    });
  }

  List<FavFilm> _films = [];
  List<FavPodcast> _podcasts = [];
  List<FavVideoEdukasi> _videoEdukasis = [];
  List<FavInfografis> _infografis = [];

  FavFilm? _currentFilm;
  FavPodcast? _currentPodcast;
  FavVideoEdukasi? _currentVideoEdukasi;
  FavInfografis? _currentInfografis;

  ContentFavoriteDataLoaded get _contentFavoriteDataLoaded => ContentFavoriteDataLoaded(
        films: _films,
        podcasts: _podcasts,
        videoEdukasis: _videoEdukasis,
        infografis: _infografis,
        currentFilm: _currentFilm,
        currentPodcast: _currentPodcast,
        currentVideoEdukasi: _currentVideoEdukasi,
        currentInfografis: _currentInfografis,
      );
}
