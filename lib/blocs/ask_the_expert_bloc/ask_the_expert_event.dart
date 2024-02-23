part of '../blocs.dart';

@immutable
abstract class AskTheExpertEvent {}

class SetAskTheExpertState extends AskTheExpertEvent {
  SetAskTheExpertState([this.state]);

  final AskTheExpertState? state;
}

class SetAskTheExpertToInitial extends AskTheExpertEvent {}

class InitializeAskTheExpertData extends AskTheExpertEvent {
  InitializeAskTheExpertData({this.completer});

  final Completer<bool>? completer;
}

class SetSelectedTopikPertanyaan extends AskTheExpertEvent {
  SetSelectedTopikPertanyaan({required this.index});

  final int index;
}

class SetSelectedInputTopikPertanyaan extends AskTheExpertEvent {
  SetSelectedInputTopikPertanyaan({required this.index});

  final int index;
}

class SendAskTheExpertPressed extends AskTheExpertEvent {}
