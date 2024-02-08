part of '../blocs.dart';

class FavPodcastBloc extends Bloc<FavPodcastEvent, FavPodcastState> {
  FavPodcastBloc() : super(FavPodcastInitial()) {
    on<SetFavPodcastState>(
        (event, emit) => emit(event.state ?? _favPodcastDataLoaded));

    on<SetFavPodcastToInitial>((event, emit) => emit(FavPodcastInitial()));

    on<InitializeFavPodcastData>((event, emit) async {
      try {
        _favpodcastList = await ApiHelper.get('/api/favpodcast').then(
            (value) => (value.data['data'] as List)
                .map((e) => FavPodcast.fromJson(e))
                .toList());
      } catch (e) {
        emit(FavPodcastError());
        return;
      }

      emit(_favPodcastDataLoaded);
    });
  }

  List<FavPodcast> _favpodcastList = [];

  FavPodcastDataLoaded get _favPodcastDataLoaded => FavPodcastDataLoaded(
        favpodcasts: _favpodcastList,
      );
}
