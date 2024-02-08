part of '../blocs.dart';

@immutable
abstract class FavFilmState {}

class FavFilmInitial extends FavFilmState {}

class FavFilmError extends FavFilmState {}

class FavFilmDataLoaded extends FavFilmState {
  FavFilmDataLoaded({
    required this.favfilms,
  });

  final List<FavFilmVideo> favfilms;

}
