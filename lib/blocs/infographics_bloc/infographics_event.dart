part of '../blocs.dart';

@immutable
abstract class InfographicsEvent {}

class SetInfographicsState extends InfographicsEvent {
  SetInfographicsState([this.state]);

  final InfographicsState? state;
}

class SetInfographicsToInitial extends InfographicsEvent {}

class InitializeInfographicsData extends InfographicsEvent {}
