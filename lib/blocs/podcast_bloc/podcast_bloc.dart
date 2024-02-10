part of '../blocs.dart';

class PodcastBloc extends Bloc<PodcastEvent, PodcastState> {
  PodcastBloc() : super(PodcastInitial()) {
    on<SetPodcastState>((event, emit) => emit(event.state ?? _podcastDataLoaded));

    on<SetPodcastToInitial>((event, emit) => emit(PodcastInitial()));

    on<InitializePodcastData>((event, emit) async {
      try {
        _podcasts = await ApiHelper.get('/api/podcast').then((value) => (value.data['data'] as List).map((e) => PodcastVideo.fromJson(e)).toList());

        emit(_podcastDataLoaded);

        await for (PodcastVideo podcast in Stream.fromIterable(_podcasts)) {
          String? id = Uri.parse(podcast.linkPodcast ?? '').queryParameters['v'];

          if (id == null) continue;

          try {
            podcast.thumbnailImageData = await ApiHelper.getBytesUri(Uri.parse('https://i.ytimg.com/vi/$id/maxresdefault.jpg')).then((value) => value.data);
          } catch (e) {
            // Ignored, really
          }
          if (podcast.thumbnailImageData == null) {
            try {
              podcast.thumbnailImageData = await ApiHelper.getBytesUri(Uri.parse('https://i.ytimg.com/vi/$id/hqdefault.jpg')).then((value) => value.data);
            } catch (e) {
              // Ignored, really
            }
          }
          emit(_podcastDataLoaded);
        }
      } catch (e) {
        emit(PodcastError());
        return;
      }

      emit(_podcastDataLoaded);
    });
  }

  List<PodcastVideo> _podcasts = [];

  PodcastDataLoaded get _podcastDataLoaded => PodcastDataLoaded(
        podcasts: _podcasts,
      );
}
