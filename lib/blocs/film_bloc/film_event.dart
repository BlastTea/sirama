part of '../blocs.dart';

@immutable
abstract class FilmEvent {}

class SetFilmVideoState extends FilmEvent {
  SetFilmVideoState([this.state]);

  final FilmState? state;
}

class SetFilmToInitial extends FilmEvent {}

class InitializeFilmData extends FilmEvent {}
