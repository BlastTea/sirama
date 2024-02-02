part of '../blocs.dart';

@immutable
abstract class KontenEvent {}

class SetKontenState extends KontenEvent {
  SetKontenState([this.state]);

  final KontenState? state;
}

class SetKontenToInitial extends KontenEvent {}

class InitializeKontenData extends KontenEvent {}
