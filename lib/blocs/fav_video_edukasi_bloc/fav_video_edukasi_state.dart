part of '../blocs.dart';

@immutable
abstract class FavVideoEdukasiState {}

class FavVideoEdukasiInitial extends FavVideoEdukasiState {}

class FavVideoEdukasiError extends FavVideoEdukasiState {}

class FavVideoEdukasiDataLoaded extends FavVideoEdukasiState {
  FavVideoEdukasiDataLoaded({
    required this.favvideoedukasis,
  });

  final List<FavVideoEdukasi> favvideoedukasis;

}
