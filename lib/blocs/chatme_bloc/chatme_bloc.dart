part of '../blocs.dart';

class ChatmeBloc extends Bloc<ChatmeEvent, ChatmeState> {
  ChatmeBloc() : super(_chatmeDataLoaded) {
    on<SetChatmeState>((event, emit) => emit(event.state ?? _chatmeDataLoaded));

    on<ChatmeSendPressed>((event, emit) {
      if (_textControllerMessage.text.trim().isEmpty) {
        return;
      }

      chats.add({
        'message': _textControllerMessage.text.trim(),
        'sentAt': TimeOfDay.fromDateTime(DateTime.now()),
        'isSender': true,
      });

      _textControllerMessage.text = '';

      emit(_chatmeDataLoaded);
    });
  }

  static final TextEditingController _textControllerMessage = TextEditingController();

  static List<Map<String, Object>> chats = [
    {
      'message': 'kamu gamu udahan aja dukung emyu',
      'sentAt': const TimeOfDay(hour: 1, minute: 5),
    },
    {
      'message': 'capek ga sih',
      'sentAt': const TimeOfDay(hour: 1, minute: 5),
    },
    {
      'message': 'enggak',
      'sentAt': const TimeOfDay(hour: 1, minute: 7),
      'isSender': true,
    },
    {
      'message': 'kamu itu capek',
      'sentAt': const TimeOfDay(hour: 1, minute: 8),
    },
    {
      'message': 'udah jangan ditutup-tutupin lagi',
      'sentAt': const TimeOfDay(hour: 1, minute: 8),
    },
    {
      'message': 'enggak kok serius',
      'sentAt': const TimeOfDay(hour: 1, minute: 7),
      'isSender': true,
    },
    {
      'message': 'aku seneng emyu meskipun kalah terus',
      'sentAt': const TimeOfDay(hour: 1, minute: 7),
      'isSender': true,
    },
  ];

  static ChatmeDataLoaded get _chatmeDataLoaded => ChatmeDataLoaded(
        textControllerMessage: _textControllerMessage,
        chats: chats.reversed.toList(),
      );
}
