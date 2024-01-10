part of 'fragments.dart';

class ChatMeFragment extends StatelessWidget {
  ChatMeFragment({super.key});

  final chats = [
    {
      'message': 'bejir',
      'sentAt': const TimeOfDay(hour: 20, minute: 49),
    },
    {
      'message': 'kayaknya dari package http itu',
      'sentAt': const TimeOfDay(hour: 20, minute: 50),
      'isSender': true,
    },
    {
      'message': 'oh iyak',
      'sentAt': const TimeOfDay(hour: 20, minute: 50),
    },
    {
      'message': 'bukan ternyata al, itu dari build_runner',
      'sentAt': const TimeOfDay(hour: 20, minute: 52),
      'isSender': true,
    },
    {
      'message': 'flutter pub add web_socket_channel',
      'sentAt': const TimeOfDay(hour: 20, minute: 55),
    },
    {
      'message': 'ini ar',
      'sentAt': const TimeOfDay(hour: 20, minute: 55),
    },
    {
      'message': 'itu dari build_runner al',
      'sentAt': const TimeOfDay(hour: 20, minute: 55),
      'isSender': true,
    },
    {
      'message': 'https://pub.dev/packages/build_runner',
      'sentAt': const TimeOfDay(hour: 20, minute: 56),
      'isSender': true,
    },
    {
      'message': 'hmm melakukan tindakan yang sia sia...',
      'sentAt': const TimeOfDay(hour: 20, minute: 56),
    },
    {
      'message': 'pake getx kan jadinya',
      'sentAt': const TimeOfDay(hour: 20, minute: 57),
    },
    {
      'message': 'iya',
      'sentAt': const TimeOfDay(hour: 20, minute: 57),
      'isSender': true,
    },
    {
      'message': 'oke ar',
      'sentAt': const TimeOfDay(hour: 22, minute: 11),
    },
    {
      'message': 'ar',
      'sentAt': const TimeOfDay(hour: 19, minute: 41),
    },
    {
      'message': 'mau garap apa malem ini?',
      'sentAt': const TimeOfDay(hour: 19, minute: 41),
    },
    {
      'message': 'bebas dah',
      'sentAt': const TimeOfDay(hour: 19, minute: 47),
      'isSender': true,
    },
    {
      'message': 'aku lanjutin yang sign in',
      'sentAt': const TimeOfDay(hour: 19, minute: 48),
      'isSender': true,
    },
    {
      'message': 'okee',
      'sentAt': const TimeOfDay(hour: 19, minute: 57),
    },
    {
      'message': 'aku home pag',
      'sentAt': const TimeOfDay(hour: 19, minute: 57),
    },
    {
      'message': 'e',
      'sentAt': const TimeOfDay(hour: 19, minute: 57),
    },
    {
      'message': 'oke',
      'sentAt': const TimeOfDay(hour: 20, minute: 6),
      'isSender': true,
    },
    {
      'message': '🤣',
      'sentAt': const TimeOfDay(hour: 1, minute: 0),
      'isSender': true,
    },
    {
      'message': '😂😂',
      'sentAt': const TimeOfDay(hour: 1, minute: 5),
    },
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Aal IF\'22'),
          centerTitle: true,
          actions: const [
            ImageContainer.hero(
              tag: 'Chat Photo Profile',
              image: AssetImage('assets/usman yousaf.jpg'),
              width: 40.0,
              height: 40.0,
              border: Border(),
            ),
            SizedBox(width: 20.0)
          ],
        ),
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          itemBuilder: (context, index) => index < chats.length
              ? Padding(
                  padding: EdgeInsets.only(
                    left: (chats[index]['isSender'] as bool? ?? false) ? 48.0 : 0.0,
                    right: (chats[index]['isSender'] as bool? ?? false) ? 0.0 : 48.0,
                  ),
                  child: MessageBubble(
                    message: (chats[index]['message'] as String?) ?? '-',
                    sentAt: (chats[index]['sentAt'] as TimeOfDay?) ?? TimeOfDay.fromDateTime(DateTime.now()),
                    isSender: (chats[index]['isSender'] as bool?) ?? false,
                  ),
                )
              : const SizedBox(height: 16.0),
          separatorBuilder: (context, index) => const SizedBox(height: 2.0),
          itemCount: chats.length + 1,
        ),
      );
}
