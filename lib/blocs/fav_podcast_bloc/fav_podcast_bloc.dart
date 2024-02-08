part of '../blocs.dart';

class FavPodcastBloc extends Bloc<FavPodcastEvent, FavPodcastState> {
  FavPodcastBloc() : super(FavPodcastInitial());

  @override
  Stream<FavPodcastState> mapEventToState(FavPodcastEvent event) async* {
    if (event is GetFavPodcastByUserId) {
      yield FavPodcastLoading();

      try {
        final favPodcasts =
            await ApiHelper.get('/api/favpodcasts/${event.userId}');

        final favPodcastVideos = (favPodcasts.data['data'] as List)
            .map((e) => FavPodcastVideo.fromJson(e))
            .toList();

        final favPodcastIds =
            favPodcastVideos.map((favPodcast) => favPodcast.idPodcast).toList();

        List<Podcast> podcastList = [];

        for (var id in favPodcastIds) {
          final podcast = await ApiHelper.get('/api/podcast/$id');
          podcastList.add(Podcast.fromJson(podcast.data['data']));
        }

        yield FavPodcastLoaded(podcastList: podcastList);
      } catch (e) {
        yield FavPodcastError();
      }
    }
  }
}
