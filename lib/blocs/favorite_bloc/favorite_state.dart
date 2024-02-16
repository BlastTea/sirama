part of '../blocs.dart';

@immutable
abstract class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class FavoriteError extends FavoriteState {}

class FavoriteDataLoaded extends FavoriteState {
  FavoriteDataLoaded({
    required this.favFilms,
    required this.favPodcasts,
    required this.favVideoEdukasis,
    required this.favInfografis,
  });

  final List<FavFilm> favFilms;
  final List<FavPodcast> favPodcasts;
  final List<FavVideoEdukasi> favVideoEdukasis;
  final List<FavInfografis> favInfografis;
}
