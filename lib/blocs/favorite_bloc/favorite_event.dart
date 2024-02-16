part of '../blocs.dart';

@immutable
abstract class FavoriteEvent {}

class SetFavoriteState extends FavoriteEvent {
  SetFavoriteState([this.state]);

  final FavoriteState? state;
}

class SetFavoriteToInitial extends FavoriteEvent {}

class InitializeFavoriteData extends FavoriteEvent {}
