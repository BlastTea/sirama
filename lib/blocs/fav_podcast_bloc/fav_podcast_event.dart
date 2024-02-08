part of '../blocs.dart';

@immutable
abstract class FavPodcastEvent {}

class GetFavPodcastByUserId extends FavPodcastEvent {
  final int userId;

  GetFavPodcastByUserId(this.userId);
}

