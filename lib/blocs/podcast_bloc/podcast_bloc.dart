part of '../blocs.dart';

class PodcastBloc extends Bloc<PodcastEvent, PodcastState> {
  PodcastBloc() : super(PodcastInitial()) {
    on<SetPodcastState>(
        (event, emit) => emit(event.state ?? _podcastDataLoaded));

    on<SetPodcastToInitial>((event, emit) => emit(PodcastInitial()));

    on<InitializePodcastData>((event, emit) async {
      try {
        _podcastList = await ApiHelper.get('/api/podcast').then(
            (value) => (value.data['data'] as List)
                .map((e) => Podcast.fromJson(e))
                .toList());

      // if (kDebugMode) {
      //   print(_podcastList);
      // }

      } catch (e) {
        emit(PodcastError());
        return;
      }

      emit(_podcastDataLoaded);
    });
  }

  List<Podcast> _podcastList = [];

  // List<List<Podcast>> _podcastsLength = [];

  PodcastDataLoaded get _podcastDataLoaded => PodcastDataLoaded(
        podcasts: _podcastList,
        // podcastsLength: _podcastsLength,
      );
}
