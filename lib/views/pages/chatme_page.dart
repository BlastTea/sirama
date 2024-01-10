part of 'pages.dart';

class ChatMe extends StatelessWidget {
  const ChatMe({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: MessageBubble(
          message: 'Hello World',
          sentAt: TimeOfDay.fromDateTime(DateTime.now()),
        ),
      );
}
