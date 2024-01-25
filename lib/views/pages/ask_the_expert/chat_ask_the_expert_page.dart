part of '../pages.dart';

class ChatAskTheExpertPage extends StatelessWidget {
  const ChatAskTheExpertPage({
    super.key,
    required this.topicIndex,
    required this.index,
  });

  final int topicIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    MyApp.askTheExpertBloc.add(ChatAskTheExpertPressed(topicIndex: topicIndex, index: index));

    return BlocBuilder<AskTheExpertBloc, AskTheExpertState>(
      builder: (context, stateAskTheExpert) {
        if (stateAskTheExpert is AskTheExpertDataLoaded) {
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
                    itemBuilder: (context, index) {
                      TanyaAhli tanyaAhli = stateAskTheExpert.tanyaAhlis[topicIndex][index];

                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: index == 1 ? 48.0 : 0.0,
                              right: index == 1 ? 0.0 : 48.0,
                            ),
                            child: MessageBubble(
                              message: (index == 0 ? tanyaAhli.pertanyaan : tanyaAhli.jawabanAhli?.jawabanAhli) ?? '-',
                              sentAt: TimeOfDay.fromDateTime((index == 0 ? tanyaAhli.waktuTanya : tanyaAhli.jawabanAhli?.waktuJawaban) ?? DateTime.now()),
                              isSender: index == 1,
                            ),
                          ),
                          const SizedBox(height: 2.0),
                        ],
                      );
                    },
                    itemCount: stateAskTheExpert.tanyaAhlis[topicIndex][index].jawabanAhli != null ? 2 : 1,
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Tanya Ahli'),
            centerTitle: true,
          ),
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
