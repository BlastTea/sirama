part of '../blocs.dart';

@immutable
abstract class ChatMeState {}

class ChatMeInitial extends ChatMeState {}

class ChatMeError extends ChatMeState {}

class ChatMeDataLoaded extends ChatMeState {
  ChatMeDataLoaded({
    required this.textControllerMessage,
    required this.messageBubbleList,
  });

  final TextEditingController textControllerMessage;

  final MessageBubbleList messageBubbleList;
}
