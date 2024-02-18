part of '../blocs.dart';

@immutable
abstract class ContentFavoriteEvent {}

class SetContentFavoriteState extends ContentFavoriteEvent {
  SetContentFavoriteState([this.state]);

  final ContentFavoriteState? state;
}

class SetContentFavoriteToInitial extends ContentFavoriteEvent {}

class InitializeContentFavoriteData extends ContentFavoriteEvent {}
