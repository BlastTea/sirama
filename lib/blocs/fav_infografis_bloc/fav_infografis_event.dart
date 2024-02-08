part of '../blocs.dart';

@immutable
abstract class FavInfografisEvent {}

class SetFavInfografisState extends FavInfografisEvent {
  SetFavInfografisState([this.state]);

  final FavInfografisState? state;
}

class SetFavInfografisToInitial extends FavInfografisEvent {}

class InitializeFavInfografisData extends FavInfografisEvent {}
