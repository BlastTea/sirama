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
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
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
                      itemBuilder: (context, index) {
                        TopikPertanyaan topikPertanyaan = stateAskTheExpert.topikPertanyaans[index];

                        return Padding(
                          padding: EdgeInsets.only(left: index == 0 ? 20.0 : 8.0, right: index == 9 ? 20.0 : 0.0),
                          child: ChoiceChip(
                            label: Text(topikPertanyaan.namaTopik ?? '?'),
                            selected: index == stateAskTheExpert.selectedTopikPertanyaan,
                            onSelected: (value) => MyApp.askTheExpertBloc.add(SetSelectedTopikPertanyaan(index: index)),
                          ),
                        );
                      },
                      itemCount: stateAskTheExpert.topikPertanyaans.length,
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
              ],
              body: stateAskTheExpert.tanyaAhlis.isEmpty
                  ? Center(
                      child: Text(
                        'Tidak ada data',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    )
                  : PageView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: stateAskTheExpert.pageController,
                      itemBuilder: (context, pageIndex) {
                        List<TanyaAhli> tanyaAhlis = stateAskTheExpert.tanyaAhlis[pageIndex];

                        if (tanyaAhlis.isEmpty) {
                          return Center(
                            child: Text(
                              'Tidak ada data',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          );
                        }

                        return ListView.builder(
                          primary: false,
                          itemBuilder: (context, index) {
                            TanyaAhli tanyaAhli = tanyaAhlis[index];

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
                              title: Text('Cal Dingo • ${tanyaAhli.waktuTanya?.toFormattedDate(
                                withHour: true,
                                withMonthName: true,
                                withWeekday: true,
                                withSeconds: false,
                              )}'),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    tanyaAhli.pertanyaan ?? '?',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 8.0),
                                  Row(
                                    children: [
                                      Icon(
                                        (tanyaAhli.statusPertanyaan ?? false) ? Icons.done_all : Icons.done,
                                        size: 18.0,
                                        color: (tanyaAhli.statusPertanyaan ?? false) ? Theme.of(context).colorScheme.primary : null,
                                      ),
                                      const SizedBox(width: 8.0),
                                      Text('${(tanyaAhli.statusPertanyaan ?? false) ? 'Sudah' : 'Belum'} dijawab oleh ahli'),
                                    ],
                                  ),
                                  const Divider(),
                                ],
                              ),
                            );
                          },
                          itemCount: tanyaAhlis.length,
                        );
                      },
                      itemCount: stateAskTheExpert.topikPertanyaans.length,
                    ),
            ),
            // CustomScrollView(
            //   slivers: [
            //     const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            //     SliverPadding(
            //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //       sliver: SliverToBoxAdapter(
            //         child: CardTile(
            //           title: const Text('1 on 1 Sessions'),
            //           subtitle: const Text('Let`s open up to the things that matter the most '),
            //           button: const Text('Chat Sekarang'),
            //           image: Image.asset('assets/hug.png'),
            //           onPressed: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const CategorySessionsPage())),
            //         ),
            //       ),
            //     ),
            //     const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            //     SliverPadding(
            //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //       sliver: SliverToBoxAdapter(
            //         child: Text(
            //           'Kategori',
            //           style: Config.textStyleHeadlineSmall,
            //         ),
            //       ),
            //     ),
            //     const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            //     SliverToBoxAdapter(
            //       child: SizedBox(
            //         height: 48.0,
            //         child: ListView.builder(
            //           scrollDirection: Axis.horizontal,
            //           itemBuilder: (context, index) {
            //             TopikPertanyaan topikPertanyaan = stateAskTheExpert.topikPertanyaans[index];

            //             return Padding(
            //               padding: EdgeInsets.only(left: index == 0 ? 20.0 : 8.0, right: index == 9 ? 20.0 : 0.0),
            //               child: ChoiceChip(
            //                 label: Text(topikPertanyaan.namaTopik ?? '?'),
            //                 selected: index == stateAskTheExpert.selectedTopikPertanyaan,
            //                 onSelected: (value) => MyApp.askTheExpertBloc.add(SetSelectedTopikPertanyaan(index: index)),
            //               ),
            //             );
            //           },
            //           itemCount: stateAskTheExpert.topikPertanyaans.length,
            //         ),
            //       ),
            //     ),
            //     const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            //     SliverPadding(
            //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //       sliver: SliverToBoxAdapter(
            //         child: Text(
            //           'Semua pertanyaan dari Sobat RAMA lainnya',
            //           style: Config.textStyleHeadlineSmall,
            //         ),
            //       ),
            //     ),
            //     const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            //     stateAskTheExpert.tanyaAhlis.isEmpty
            //         ? SliverFillRemaining(
            //             hasScrollBody: false,
            //             child: Text(
            //               'Tidak ada data',
            //               style: Theme.of(context).textTheme.bodyLarge,
            //             ),
            //           )
            //         : SliverToBoxAdapter(
            //             child: PageView.builder(
            //               controller: stateAskTheExpert.pageController,
            //               itemBuilder: (context, index) => ListView.builder(
            //                 itemBuilder: (context, index) {
            //                   TanyaAhli tanyaAhli = stateAskTheExpert.tanyaAhlis[index];

            //                   return ListTile(
            //                     isThreeLine: true,
            //                     contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
            //                     onTap: () => debugPrint('On question pressed'),
            //                     leading: ImageContainer.hero(
            //                       tag: 'Profile picture $index',
            //                       width: 48.0,
            //                       height: 48.0,
            //                       iconSize: 24.0,
            //                       icon: Icons.person,
            //                       border: const Border(),
            //                       image: const NetworkImage('https://avatars.githubusercontent.com/u/75353116?v=4'),
            //                       borderRadius: BorderRadius.circular(24.0),
            //                     ),
            //                     title: Text('Cal Dingo • ${tanyaAhli.waktuTanya?.toFormattedDate(
            //                       withHour: true,
            //                       withMonthName: true,
            //                       withWeekday: true,
            //                       withSeconds: false,
            //                     )}'),
            //                     subtitle: Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text(
            //                           tanyaAhli.pertanyaan ?? '?',
            //                           maxLines: 2,
            //                           overflow: TextOverflow.ellipsis,
            //                         ),
            //                         const SizedBox(height: 8.0),
            //                         Row(
            //                           children: [
            //                             Icon(
            //                               (tanyaAhli.statusPertanyaan ?? false) ? Icons.done_all : Icons.done,
            //                               size: 18.0,
            //                               color: (tanyaAhli.statusPertanyaan ?? false) ? Theme.of(context).colorScheme.primary : null,
            //                             ),
            //                             const SizedBox(width: 8.0),
            //                             Text('${(tanyaAhli.statusPertanyaan ?? false) ? 'Sudah' : 'Belum'} dijawab oleh ahli'),
            //                           ],
            //                         ),
            //                         const Divider(),
            //                       ],
            //                     ),
            //                   );
            //                 },
            //                 itemCount: stateAskTheExpert.tanyaAhlis.length,
            //               ),
            //               itemCount: stateAskTheExpert.topikPertanyaans.length,
            //             ),
            //           ),
            //   ],
            // ),
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
