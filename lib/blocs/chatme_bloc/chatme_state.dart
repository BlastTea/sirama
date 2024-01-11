part of '../blocs.dart';

@immutable
abstract class ChatmeState {}

class ChatmeDataLoaded extends ChatmeState {
  ChatmeDataLoaded({
    required this.textControllerMessage,
    required this.chats,
  });

  final TextEditingController textControllerMessage;

  final List<Map<String, Object>> chats;
}
