part of 'fragments.dart';

// TODO: Change this into page
class ChatFragment extends StatelessWidget {
  const ChatFragment({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Chat'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            leading: ImageContainer.hero(
              tag: 'Chat profile picture $index',
              width: 48.0,
              height: 48.0,
              iconSize: 24.0,
              icon: Icons.person,
              border: const Border(),
              image: const NetworkImage('https://avatars.githubusercontent.com/u/75353116?v=4'),
              borderRadius: BorderRadius.circular(24.0),
            ),
            title: const Text('Zalorin Vexstar'),
            subtitle: const Text(
              'aku senang emyu meskipun kalah terus',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Text(const TimeOfDay(hour: 1, minute: 7).toFormattedString()),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            onTap: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => ChatMePage(index: index))),
          ),
          itemCount: 100,
        ),
      );
}
