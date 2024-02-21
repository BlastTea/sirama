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
    required this.currentFilm,
    required this.currentPodcast,
    required this.currentVideoEdukasi,
    required this.currentInfografis,
  });

  final List<FavFilm> films;
  final List<FavPodcast> podcasts;
  final List<FavVideoEdukasi> videoEdukasis;
  final List<FavInfografis> infografis;

  final FavFilm? currentFilm;
  final FavPodcast? currentPodcast;
  final FavVideoEdukasi? currentVideoEdukasi;
  final FavInfografis? currentInfografis;
}
