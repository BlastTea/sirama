part of '../blocs.dart';

@immutable
abstract class FavFilmEvent {}

class SetFavFilmState extends FavFilmEvent {
  SetFavFilmState([this.state]);

  final FavFilmState? state;
}

class SetFavFilmToInitial extends FavFilmEvent {}

class InitializeFavFilmData extends FavFilmEvent {}
