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
      } catch (e) {
        emit(PodcastError());
        return;
      }

      emit(_podcastDataLoaded);
    });
  }

  List<Podcast> _podcastList = [];

  PodcastDataLoaded get _podcastDataLoaded => PodcastDataLoaded(
        podcasts: _podcastList,
      );
}
