part of 'fragments.dart';

class AskTheExpertFragment extends StatelessWidget {
  const AskTheExpertFragment({super.key});

  @override
  Widget build(BuildContext context) {
    if (MyApp.askTheExpertBloc.state is AskTheExpertInitial) {
      MyApp.askTheExpertBloc.add(InitializeAskTheExpertData());
    }

    return BlocBuilder<AskTheExpertBloc, AskTheExpertState>(
      builder: (context, stateAskTheExpert) {
        if (stateAskTheExpert is AskTheExpertDataLoaded) {
          return SafeArea(
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  sliver: SliverToBoxAdapter(
                    child: CardTile(
                      title: const Text('1 on 1 Sessions'),
                      subtitle: const Text('Let`s open up to the things that matter the most '),
                      button: const Text('Chat Sekarang'),
                      image: Image.asset('assets/hug.png'),
                      onPressed: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const CategorySessionsPage())),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      'Kategori',
                      style: Config.textStyleHeadlineSmall,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 48.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 20.0 : 8.0, right: index == 9 ? 20.0 : 0.0),
                        child: ChoiceChip(
                          label: const Text('Self Care'),
                          selected: index == 0,
                          onSelected: (value) {},
                        ),
                      ),
                      itemCount: 10,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      'Semua pertanyaan dari Sobat RAMA lainnya',
                      style: Config.textStyleHeadlineSmall,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                SliverList.builder(
                  itemBuilder: (context, index) {
                    TanyaAhli tanyaAhli = stateAskTheExpert.tanyaAhlis[index];

                    return ListTile(
                      isThreeLine: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                      onTap: () => debugPrint('On question pressed'),
                      leading: ImageContainer.hero(
                        tag: 'Profile picture $index',
                        width: 48.0,
                        height: 48.0,
                        iconSize: 24.0,
                        icon: Icons.person,
                        border: const Border(),
                        image: const NetworkImage('https://avatars.githubusercontent.com/u/75353116?v=4'),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      title: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('Cal Dingo • just now'),
                      ),
                      subtitle: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(tanyaAhli.pertanyaan ?? '?'),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.thumb_up_outlined),
                                  iconSize: 20.0,
                                ),
                              ),
                              const Text('2'),
                              const SizedBox(width: 18.0),
                              SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.messenger_outline),
                                  iconSize: 20.0,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Transform.flip(
                                    flipX: true,
                                    child: const Icon(Icons.reply_outlined),
                                  ),
                                  iconSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                        ],
                      ),
                    );
                  },
                  itemCount: stateAskTheExpert.tanyaAhlis.length,
                ),
              ],
            ),
          );
        } else if (stateAskTheExpert is AskTheExpertError) {
          return SafeArea(
            child: ErrorOccuredButton(
              onRetryPressed: () => MyApp.askTheExpertBloc.add(InitializeAskTheExpertData()),
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
