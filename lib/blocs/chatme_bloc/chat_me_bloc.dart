part of '../blocs.dart';

class ChatMeBloc extends Bloc<ChatMeEvent, ChatMeState> {
  ChatMeBloc() : super(ChatMeInitial()) {
    on<SetChatmeState>((event, emit) => emit(event.state ?? _chatmeDataLoaded));

    on<InitializeChatMeData>((event, emit) async {
      if (event.completer == null) emit(ChatMeInitial());

      try {
        _rooms = await ApiHelper.get('/api/chatme').then((value) => (value.data['data'] as List).map((e) => RoomChatMe.fromJson(e)).toList());
        await for (RoomChatMe room in Stream.fromIterable(_rooms)) {
          List<RiwayatChatMe> riwayats = await ApiHelper.get('/api/chatme/${room.idRoomChatMe}').then((value) => (value.data['data'] as List).map((e) => RiwayatChatMe.fromJson(e)).toList());
          room.riwayats = riwayats.reversed.toList();
        }
      } catch (e) {
        event.completer?.complete(false);
        emit(ChatMeError());
        return;
      }

      _messageBubbleList = MessageBubbleList.fromRoom(rooms: _rooms);
      event.completer?.complete(true);
      emit(_chatmeDataLoaded);
    });

    on<ChatMeSendPressed>((event, emit) {
      if (_textControllerMessage.text.trim().isEmpty) return;

      // _rooms[_currentRoomIndex].riwayats!.insert(
      //       _rooms[_currentRoomIndex].riwayats!.length - 1,
      //       RiwayatChatMe(),
      //     );

      _textControllerMessage.text = '';

      emit(_chatmeDataLoaded);
    });
  }

  static final TextEditingController _textControllerMessage = TextEditingController();

  List<RoomChatMe> _rooms = [];

  late MessageBubbleList _messageBubbleList;

  ChatMeDataLoaded get _chatmeDataLoaded => ChatMeDataLoaded(
        textControllerMessage: _textControllerMessage,
        messageBubbleList: _messageBubbleList,
      );
}
