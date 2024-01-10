part of 'pages.dart';

class ChatMe extends StatelessWidget {
  const ChatMe({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: MessageBubble(message: 'Hello World'),
      );
}
