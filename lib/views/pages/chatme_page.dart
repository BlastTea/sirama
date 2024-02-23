part of 'pages.dart';

class ChatMePage extends StatelessWidget {
  const ChatMePage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) => BlocBuilder<ChatMeBloc, ChatMeState>(
        builder: (context, stateChatMe) {
          stateChatMe as ChatMeDataLoaded;

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
                  child: RefreshIndicator(
                    onRefresh: () async {
                      Completer<bool> completer = Completer();
                      MyApp.chatmeBloc.add(InitializeChatMeData(completer: completer));
                      await completer.future;
                    },
                    child: ListView.builder(
                      key: ValueKey(stateChatMe.messageBubbleList.data[index].length),
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      reverse: true,
                      itemBuilder: (context, dataIndex) {
                        MessageBubbleData data = stateChatMe.messageBubbleList.data[index][dataIndex];

                        if (data is MessageBubbleDataText) {
                          return Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: data.isSender ? 48.0 : 0.0,
                                  right: data.isSender ? 0.0 : 48.0,
                                ),
                                child: MessageBubble(
                                  message: data.message ?? '-',
                                  sentAt: data.sentAt != null ? TimeOfDay.fromDateTime(data.sentAt!) : TimeOfDay.fromDateTime(DateTime.now()),
                                  isSender: data.isSender,
                                ),
                              ),
                              const SizedBox(height: 2.0),
                            ],
                          );
                        }

                        data as MessageBubbleDataDateTime;

                        return Center(child: Text(data.dateTime?.toFormattedDate() ?? '?'));
                      },
                      itemCount: stateChatMe.messageBubbleList.data[index].length,
                    ),
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
                            controller: stateChatMe.textControllerMessage,
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
                        onPressed: () => MyApp.chatmeBloc.add(ChatMeSendPressed()),
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
