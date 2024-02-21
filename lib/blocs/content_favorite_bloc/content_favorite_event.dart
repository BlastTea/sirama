part of '../blocs.dart';

@immutable
abstract class ContentFavoriteEvent {}

class SetContentFavoriteState extends ContentFavoriteEvent {
  SetContentFavoriteState([this.state]);

  final ContentFavoriteState? state;
}

class SetContentFavoriteToInitial extends ContentFavoriteEvent {}

class InitializeContentFavoriteData extends ContentFavoriteEvent {}

class InitializeEditFilmData extends ContentFavoriteEvent {
  InitializeEditFilmData({required this.favFilm});

  final FavFilm favFilm;
}

class ToggleFilmFavoritePressed extends ContentFavoriteEvent {}

class InitializeEditPodcastData extends ContentFavoriteEvent {
  InitializeEditPodcastData({required this.favPodcast});

  final FavPodcast favPodcast;
}

class TogglePodcastFavoritePressed extends ContentFavoriteEvent {}

class InitializeEditVideoEdukasiData extends ContentFavoriteEvent {
  InitializeEditVideoEdukasiData({required this.favVideoEdukasi});

  final FavVideoEdukasi favVideoEdukasi;
}

class ToggleVideoEdukasiFavoritePressed extends ContentFavoriteEvent {}

class InitializeEditInfografisData extends ContentFavoriteEvent {
  InitializeEditInfografisData({required this.favInfografis});

  final FavInfografis favInfografis;
}

class ToggleInfografisFavoritePressed extends ContentFavoriteEvent {}
