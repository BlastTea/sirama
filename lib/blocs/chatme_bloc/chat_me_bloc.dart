part of '../blocs.dart';

class ChatMeBloc extends Bloc<ChatMeEvent, ChatMeState> {
  ChatMeBloc() : super(ChatMeInitial()) {
    on<SetChatmeState>((event, emit) => emit(event.state ?? _chatmeDataLoaded));

    on<InitializeChatMeData>((event, emit) async {
      if (event.completer == null) emit(ChatMeInitial());

      try {
        _rooms = await ApiHelper.get('/api/chatme').then((value) => (value.data['data'] as List).map((e) => RoomChatMe.fromJson(e)).toList());
        await for (RoomChatMe room in Stream.fromIterable(_rooms)) {
          try {
            List<RiwayatChatMe> riwayats = await ApiHelper.get('/api/chatme/${room.idRoomChatMe}').then((value) => (value.data['data'] as List).map((e) => RiwayatChatMe.fromJson(e)).toList());
            room.riwayats = riwayats.reversed.toList();
          } catch (e) {
            await ApiHelper.handleError(e);
          }
        }
      } catch (e) {
        event.completer?.complete(false);
        emit(ChatMeError());
        ApiHelper.handleError(e);
        return;
      }

      _textControllerMessage.clear();

      _messageBubbleList = MessageBubbleList.fromRoom(rooms: _rooms);
      event.completer?.complete(true);
      emit(_chatmeDataLoaded);
    });

    on<ChatMeSendPressed>((event, emit) async {
      if (_textControllerMessage.text.trim().isEmpty) return;

      RiwayatChatMe riwayatChatMe;
      try {
        riwayatChatMe = await ApiHelper.post('/api/chatme/${currentUser?.role == UserRole.remaja ? _rooms[event.index].guruUserId : _rooms[event.index].remajaUserId}', body: {'pesan': _textControllerMessage.text.trim()}).then((value) => RiwayatChatMe.fromJson(value.data['data']));
      } catch (e) {
        ApiHelper.handleError(e);
        return;
      }

      _rooms[event.index].riwayats!.insert(0, riwayatChatMe);

      _textControllerMessage.clear();

      _messageBubbleList = MessageBubbleList.fromRoom(rooms: _rooms);

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
