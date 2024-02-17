part of '../blocs.dart';

@immutable
abstract class SkrinningEvent {}

class SetSkrinningState extends SkrinningEvent {
  SetSkrinningState([this.state]);

  final SkrinningState? state;
}

class SetSkrinningToInitial extends SkrinningEvent {}

class InitializeSkrinningData extends SkrinningEvent {}
