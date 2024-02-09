part of '../blocs.dart';

class FavPodcastBloc extends Bloc<FavPodcastEvent, FavPodcastState> {
  FavPodcastBloc() : super(FavPodcastInitial()) {
    on<SetFavPodcastState>(
        (event, emit) => emit(event.state ?? _favPodcastDataLoaded));

    on<SetFavPodcastToInitial>((event, emit) => emit(FavPodcastInitial()));

    on<InitializeFavPodcastData>((event, emit) async {
      try {
        _favPodcastList = await ApiHelper.get('/api/podcast').then(
            (value) => (value.data['data'] as List)
                .map((e) => FavPodcastVideo.fromJson(e))
                .toList());
      } catch (e) {
        emit(FavPodcastError());
        return;
      }

      emit(_favPodcastDataLoaded);
    });
  }

  List<FavPodcastVideo> _favPodcastList = [];

  FavPodcastDataLoaded get _favPodcastDataLoaded => FavPodcastDataLoaded(
        favPodcasts: _favPodcastList,
      );
}
