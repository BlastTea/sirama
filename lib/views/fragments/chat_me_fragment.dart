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
                      RoomChatMe roomChatMe = stateChatMe.rooms[index];
                      List<MessageBubbleData>? data;
                      try {
                        data = stateChatMe.messageBubbleList!.data[index];
                      } catch (e) {
                        data = null;
                      }

                      return ListTile(
                        leading: ImageContainer.hero(
                          tag: 'Chat profile picture $index',
                          width: 48.0,
                          height: 48.0,
                          iconSize: 24.0,
                          icon: Icons.person,
                          border: const Border(),
                          image: roomChatMe.fotoProfileData != null ? MemoryImage(Uint8List.fromList(roomChatMe.fotoProfileData!)) : const AssetImage('assets/user.png') as ImageProvider,
                          borderRadius: BorderRadius.circular(24.0),
                          extendedAppBar: AppBar(
                            title: Text(roomChatMe.nama ?? '?'),
                          ),
                        ),
                        title: Text(roomChatMe.nama ?? '?'),
                        subtitle: data != null
                            ? Text(
                                (data.first as MessageBubbleDataText).message ?? '?',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            : null,
                        trailing: data != null ? Text(TimeOfDay.fromDateTime((data.first as MessageBubbleDataText).sentAt!).toFormattedString()) : null,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                        onTap: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => ChatMePage(index: index))),
                      );
                    },
                    itemCount: stateChatMe.rooms.length,
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
