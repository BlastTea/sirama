part of '../blocs.dart';

@immutable
abstract class FilmVideoState {}

class FilmVideoInitial extends FilmVideoState {}

class FilmVideoError extends FilmVideoState {}

class FilmVideoDataLoaded extends FilmVideoState {
  FilmVideoDataLoaded({
    required this.filmvideo
  });

  final List<Film> filmvideo;
}
