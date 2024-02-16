part of '../blocs.dart';

class PodcastBloc extends Bloc<PodcastEvent, PodcastState> {
  PodcastBloc() : super(PodcastInitial()) {
    on<SetPodcastState>((event, emit) => emit(event.state ?? _podcastDataLoaded));

    on<SetPodcastToInitial>((event, emit) => emit(PodcastInitial()));

    on<InitializePodcastData>((event, emit) async {
      try {
        _podcasts = await ApiHelper.get('/api/podcast').then((value) => (value.data['data'] as List).map((e) => Podcast.fromJson(e)).toList());

        await for (Podcast podcast in Stream.fromIterable(_podcasts)) {
          podcast.thumbnailImageData = await getYoutubeThumbnailImageData(uri: Uri.parse(podcast.linkPodcast ?? ''));
        }
      } catch (e) {
        emit(PodcastError());
        return;
      }

      emit(_podcastDataLoaded);
    });
  }

  List<Podcast> _podcasts = [];

  PodcastDataLoaded get _podcastDataLoaded => PodcastDataLoaded(
        podcasts: _podcasts,
      );
}
