part of '../blocs.dart';

@immutable
abstract class FilmState {}

class FilmInitial extends FilmState {}

class FilmError extends FilmState {}

class FilmDataLoaded extends FilmState {
  FilmDataLoaded({required this.films});

  final List<Film> films;
}
