part of '../blocs.dart';

@immutable
abstract class ChatMeEvent {}

class SetChatmeState extends ChatMeEvent {
  SetChatmeState([this.state]);

  final ChatMeState? state;
}

class InitializeChatMeData extends ChatMeEvent {
  InitializeChatMeData({this.completer});

  final Completer<bool>? completer;
}

class ChatMeSendPressed extends ChatMeEvent {}
