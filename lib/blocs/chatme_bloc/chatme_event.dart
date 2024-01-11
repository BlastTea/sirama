part of '../blocs.dart';

@immutable
abstract class ChatmeEvent {}

class SetChatmeState extends ChatmeEvent {
  SetChatmeState([this.state]);

  final ChatmeState? state;
}

class ChatmeSendPressed extends ChatmeEvent {}
