part of '../blocs.dart';

@immutable
abstract class FavVideoEdukasiEvent {}

class SetFavVideoEdukasiState extends FavVideoEdukasiEvent {
  SetFavVideoEdukasiState([this.state]);

  final FavVideoEdukasiState? state;
}

class SetFavVideoEdukasiToInitial extends FavVideoEdukasiEvent {}

class InitializeFavVideoEdukasiData extends FavVideoEdukasiEvent {}
