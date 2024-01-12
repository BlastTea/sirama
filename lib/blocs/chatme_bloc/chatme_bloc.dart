part of '../blocs.dart';

class ChatmeBloc extends Bloc<ChatmeEvent, ChatmeState> {
  ChatmeBloc() : super(_chatmeDataLoaded) {
    on<SetChatmeState>((event, emit) => emit(event.state ?? _chatmeDataLoaded));

    on<ChatmeSendPressed>((event, emit) {
      if (_textControllerMessage.text.trim().isEmpty) {
        //TODO:Add return message
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
    // {
    //   'message': 'bejir',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 49),
    // },
    // {
    //   'message': 'kayaknya dari package http itu',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 50),
    //   'isSender': true,
    // },
    // {
    //   'message': 'oh iyak',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 50),
    // },
    // {
    //   'message': 'bukan ternyata al, itu dari build_runner',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 52),
    //   'isSender': true,
    // },
    // {
    //   'message': 'flutter pub add web_socket_channel',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 55),
    // },
    // {
    //   'message': 'ini ar',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 55),
    // },
    // {
    //   'message': 'itu dari build_runner al',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 55),
    //   'isSender': true,
    // },
    // {
    //   'message': 'https://pub.dev/packages/build_runner',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 56),
    //   'isSender': true,
    // },
    // {
    //   'message': 'hmm melakukan tindakan yang sia sia...',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 56),
    // },
    // {
    //   'message': 'pake getx kan jadinya',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 57),
    // },
    // {
    //   'message': 'iya',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 57),
    //   'isSender': true,
    // },
    // {
    //   'message': 'oke ar',
    //   'sentAt': const TimeOfDay(hour: 22, minute: 11),
    // },
    // {
    //   'message': 'ar',
    //   'sentAt': const TimeOfDay(hour: 19, minute: 41),
    // },
    // {
    //   'message': 'mau garap apa malem ini?',
    //   'sentAt': const TimeOfDay(hour: 19, minute: 41),
    // },
    // {
    //   'message': 'bebas dah',
    //   'sentAt': const TimeOfDay(hour: 19, minute: 47),
    //   'isSender': true,
    // },
    // {
    //   'message': 'aku lanjutin yang sign in',
    //   'sentAt': const TimeOfDay(hour: 19, minute: 48),
    //   'isSender': true,
    // },
    // {
    //   'message': 'okee',
    //   'sentAt': const TimeOfDay(hour: 19, minute: 57),
    // },
    // {
    //   'message': 'aku home pag',
    //   'sentAt': const TimeOfDay(hour: 19, minute: 57),
    // },
    // {
    //   'message': 'e',
    //   'sentAt': const TimeOfDay(hour: 19, minute: 57),
    // },
    // {
    //   'message': 'oke',
    //   'sentAt': const TimeOfDay(hour: 20, minute: 6),
    //   'isSender': true,
    // },
    // {
    //   'message': '🤣',
    //   'sentAt': const TimeOfDay(hour: 1, minute: 0),
    //   'isSender': true,
    // },
    // {
    //   'message': '😂😂',
    //   'sentAt': const TimeOfDay(hour: 1, minute: 5),
    // },
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
