part of '../blocs.dart';

@immutable
abstract class FavPodcastState {}

class FavPodcastInitial extends FavPodcastState {}

class FavPodcastError extends FavPodcastState {}

class FavPodcastDataLoaded extends FavPodcastState {
  FavPodcastDataLoaded({
    required this.favpodcasts,
  });

  final List<FavPodcast> favpodcasts;

}
