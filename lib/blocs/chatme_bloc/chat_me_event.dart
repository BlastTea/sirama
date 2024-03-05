part of '../blocs.dart';

@immutable
abstract class ChatMeEvent {}

class SetChatmeState extends ChatMeEvent {
  SetChatmeState([this.state]);

  final ChatMeState? state;
}

class SetChatMeToInitial extends ChatMeEvent {}

class InitializeChatMeData extends ChatMeEvent {
  InitializeChatMeData({this.completer});

  final Completer<bool>? completer;
}

class ChatMeSendPressed extends ChatMeEvent {
  ChatMeSendPressed({required this.index});

  final int index;
}
