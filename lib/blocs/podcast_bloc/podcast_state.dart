part of '../blocs.dart';

@immutable
abstract class PodcastState {}

class PodcastInitial extends PodcastState {}

class PodcastError extends PodcastState {}

class PodcastDataLoaded extends PodcastState {
  PodcastDataLoaded({
    required this.podcasts,
    // required this.podcastsLength,
  });

  final List<Podcast> podcasts;

  // final List<List<Podcast>> podcastsLength;
}
