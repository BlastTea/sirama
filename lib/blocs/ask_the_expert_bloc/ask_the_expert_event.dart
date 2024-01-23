part of '../blocs.dart';

@immutable
abstract class AskTheExpertEvent {}

class SetAskTheExpertState extends AskTheExpertEvent {
  SetAskTheExpertState([this.state]);

  final AskTheExpertState? state;
}

class SetAskTheExpertToInitial extends AskTheExpertEvent {}

class InitializeAskTheExpertData extends AskTheExpertEvent {}
