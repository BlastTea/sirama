part of '../pages.dart';

class ChatAskTheExpertPage extends StatelessWidget {
  const ChatAskTheExpertPage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ChatmeBloc, ChatmeState>(
        builder: (context, stateChatme) {
          stateChatme as ChatmeDataLoaded;

          return Scaffold(
            appBar: AppBar(
              title: const Text('Tanya Ahli'),
              centerTitle: true,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Anda bertanya kepada',
                    style: Config.textStyleTitleLarge.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Sahana S.Pd, M.Pd.',
                    style: Config.textStyleTitleLarge,
                  ),
                ),
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
