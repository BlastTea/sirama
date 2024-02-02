part of '../blocs.dart';

@immutable
abstract class KontenState {}

class KontenInitial extends KontenState {}

class KontenError extends KontenState {}

class KontenDataLoaded extends KontenState {
  KontenDataLoaded({
    required this.kontens,
  });

  final List<Konten> kontens;

  // final List<List<Konten>> KontensLength;
}
