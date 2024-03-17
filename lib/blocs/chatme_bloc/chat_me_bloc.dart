part of '../blocs.dart';

class ChatMeBloc extends Bloc<ChatMeEvent, ChatMeState> {
  ChatMeBloc() : super(ChatMeInitial()) {
    on<SetChatmeState>((event, emit) => emit(event.state ?? _chatmeDataLoaded));

    on<SetChatMeToInitial>((event, emit) {
      _textControllerMessage.clear();

      _rooms = [];

      _messageBubbleList = null;

      emit(ChatMeInitial());
    });

    on<InitializeChatMeData>((event, emit) async {
      if (event.completer == null) emit(ChatMeInitial());

      try {
        _rooms = await ApiHelper.get('/api/chatme', ignoreAuthorization: false).then((value) => (value['data'] as List).map((e) => RoomChatMe.fromJson(e)).toList());
        await for (RoomChatMe room in Stream.fromIterable(_rooms)) {
          try {
            if (room.fotoProfile != null) {
              room.fotoProfileData = await ApiHelper.getBytesUri(Uri.parse('${ApiHelper.url}/storage/profile/${room.fotoProfile}')).then((value) => value);
            }
          } catch (e) {
            // Ignored, really
          }
          try {
            List<RiwayatChatMe> riwayats = await ApiHelper.get('/api/chatme/${room.idRoomChatMe}', ignoreAuthorization: false).then((value) => (value['data'] as List).map((e) => RiwayatChatMe.fromJson(e)).toList());
            room.riwayats = riwayats.reversed.toList();
          } catch (e) {
            event.completer?.complete(false);
            emit(ChatMeError());
            ApiHelper.handleError(e);
            return;
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
        riwayatChatMe = await ApiHelper.post('/api/chatme/${currentUser?.role == UserRole.remaja ? _rooms[event.index].guruUserId : _rooms[event.index].remajaUserId}', body: {'pesan': _textControllerMessage.text.trim()}, ignoreAuthorization: false).then((value) => RiwayatChatMe.fromJson(value['data']));
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

  MessageBubbleList? _messageBubbleList;

  ChatMeDataLoaded get _chatmeDataLoaded => ChatMeDataLoaded(
        textControllerMessage: _textControllerMessage,
        messageBubbleList: _messageBubbleList,
        rooms: _rooms,
      );
}
