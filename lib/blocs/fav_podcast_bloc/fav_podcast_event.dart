part of '../blocs.dart';

@immutable
abstract class FavPodcastEvent {}

class SetFavPodcastState extends FavPodcastEvent {
  SetFavPodcastState([this.state]);

  final FavPodcastState? state;
}

class SetFavPodcastToInitial extends FavPodcastEvent {}

class InitializeFavPodcastData extends FavPodcastEvent {}
