part of 'fragments.dart';

class ChatMeFragment extends StatelessWidget {
  const ChatMeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    if (MyApp.chatmeBloc.state is ChatMeInitial) MyApp.chatmeBloc.add(InitializeChatMeData());

    return BlocBuilder<ChatMeBloc, ChatMeState>(
      builder: (context, stateChatMe) {
        if (stateChatMe is ChatMeDataLoaded) {
          return SafeArea(
            child: RefreshIndicator(
              onRefresh: () async {
                Completer<bool> completer = Completer();
                MyApp.chatmeBloc.add(InitializeChatMeData(completer: completer));
                await completer.future;
              },
              child: CustomScrollView(
                slivers: [
                  SliverList.builder(
                    itemBuilder: (context, index) {
                      List<MessageBubbleData> data = stateChatMe.messageBubbleList.data[index];

                      return ListTile(
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
                        subtitle: Text(
                          (data.first as MessageBubbleDataText).message ?? '?',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Text(TimeOfDay.fromDateTime((data.first as MessageBubbleDataText).sentAt!).toFormattedString()),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                        onTap: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => ChatMePage(index: index))),
                      );
                    },
                    itemCount: stateChatMe.messageBubbleList.data.length,
                  ),
                ],
              ),
            ),
          );
        } else if (stateChatMe is ChatMeError) {
          return SafeArea(
            child: ErrorOccuredButton(
              onRetryPressed: () => MyApp.chatmeBloc.add(InitializeChatMeData()),
            ),
          );
        }

        return const SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
