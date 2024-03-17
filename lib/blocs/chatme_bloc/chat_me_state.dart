part of '../blocs.dart';

@immutable
abstract class ChatMeState {}

class ChatMeInitial extends ChatMeState {}

class ChatMeError extends ChatMeState {}

class ChatMeDataLoaded extends ChatMeState {
  ChatMeDataLoaded({
    required this.textControllerMessage,
    required this.messageBubbleList,
    required this.rooms,
  });

  final TextEditingController textControllerMessage;

  final MessageBubbleList? messageBubbleList;

  final List<RoomChatMe> rooms;
}
