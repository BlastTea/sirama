part of '../blocs.dart';
@immutable
abstract class FavPodcastState {}

class FavPodcastInitial extends FavPodcastState {}

class FavPodcastLoading extends FavPodcastState {}

class FavPodcastLoaded extends FavPodcastState {
  final List<Podcast> podcastList;

  FavPodcastLoaded({required this.podcastList});
}

class FavPodcastError extends FavPodcastState {}
