part of '../blocs.dart';

@immutable
abstract class ContentFavoriteState {}

class ContentFavoriteInitial extends ContentFavoriteState {}

class ContentFavoriteError extends ContentFavoriteState {}

class ContentFavoriteDataLoaded extends ContentFavoriteState {
  ContentFavoriteDataLoaded({
    required this.films,
    required this.podcasts,
    required this.videoEdukasis,
    required this.infografis,
  });

  final List<FavFilm> films;
  final List<FavPodcast> podcasts;
  final List<FavVideoEdukasi> videoEdukasis;
  final List<FavInfografis> infografis;
}
