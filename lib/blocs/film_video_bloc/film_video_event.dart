part of '../blocs.dart';

@immutable
abstract class FilmVideoEvent {}

class SetFilmVideoState extends FilmVideoEvent {
  SetFilmVideoState([this.state]);

  final FilmVideoState? state;
}

class SetFilmVideoToInitial extends FilmVideoEvent {}

class InitializeFilmVideoData extends FilmVideoEvent {}
