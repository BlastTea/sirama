part of 'fragments.dart';

class ChatMeFragment extends StatelessWidget {
  const ChatMeFragment({super.key});

  @override
  Widget build(BuildContext context) => const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: MessageBubble(
            message: longLorem,
            sentAt: TimeOfDay(hour: 13, minute: 10),
          ),
        ),
      );
}
