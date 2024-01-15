part of 'pages.dart';

class ChatMePage extends StatelessWidget {
  const ChatMePage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) => BlocBuilder<ChatmeBloc, ChatmeState>(
        builder: (context, stateChatme) {
          stateChatme as ChatmeDataLoaded;

          return Scaffold(
            appBar: AppBar(
              title: const Text('Zalorin Vexstar'),
              centerTitle: true,
              actions: [
                ImageContainer.hero(
                  tag: 'Chat profile picture $index',
                  image: const NetworkImage('https://avatars.githubusercontent.com/u/75353116?v=4'),
                  width: 40.0,
                  height: 40.0,
                  border: const Border(),
                ),
                const SizedBox(width: 20.0)
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    key: UniqueKey(),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    reverse: true,
                    itemBuilder: (context, index) => index < stateChatme.chats.length
                        ? Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: (stateChatme.chats[index]['isSender'] as bool? ?? false) ? 48.0 : 0.0,
                                  right: (stateChatme.chats[index]['isSender'] as bool? ?? false) ? 0.0 : 48.0,
                                ),
                                child: MessageBubble(
                                  message: (stateChatme.chats[index]['message'] as String?) ?? '-',
                                  sentAt: (stateChatme.chats[index]['sentAt'] as TimeOfDay?) ?? TimeOfDay.fromDateTime(DateTime.now()),
                                  isSender: (stateChatme.chats[index]['isSender'] as bool?) ?? false,
                                ),
                              ),
                              const SizedBox(height: 2.0),
                            ],
                          )
                        : const SizedBox(height: 16.0),
                    itemCount: stateChatme.chats.length + 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxHeight: 200.0,
                          ),
                          child: TextField(
                            controller: stateChatme.textControllerMessage,
                            decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              fillColor: Config.greyColor.withOpacity(0.5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            textInputAction: TextInputAction.newline,
                            maxLines: null,
                            textCapitalization: TextCapitalization.sentences,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      IconButton.filled(
                        onPressed: () => MyApp.chatmeBloc.add(ChatmeSendPressed()),
                        icon: SvgPicture.asset('assets/svgs/Send.svg'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
}
