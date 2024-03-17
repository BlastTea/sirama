part of 'fragments.dart';

class AskTheExpertFragment extends StatefulWidget {
  const AskTheExpertFragment({super.key});

  @override
  State<AskTheExpertFragment> createState() => _AskTheExpertFragmentState();
}

class _AskTheExpertFragmentState extends State<AskTheExpertFragment> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    if (MyApp.askTheExpertBloc.state is AskTheExpertInitial) {
      MyApp.askTheExpertBloc.add(InitializeAskTheExpertData());
    }

    _pageController = PageController(
      initialPage: MyApp.askTheExpertBloc.state is AskTheExpertDataLoaded ? (MyApp.askTheExpertBloc.state as AskTheExpertDataLoaded).selectedTopikPertanyaan : 0,
    );
  }

  bool showAllQuestions = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AskTheExpertBloc, AskTheExpertState>(
      builder: (context, stateAskTheExpert) {
        if (stateAskTheExpert is AskTheExpertDataLoaded) {
          return Scaffold(
            body: SafeArea(
              child: RefreshIndicator(
                onRefresh: () async {
                  Completer<bool> completer = Completer();
                  MyApp.askTheExpertBloc.add(InitializeAskTheExpertData(completer: completer));
                  await completer.future;
                },
                child: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                    const SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      sliver: SliverToBoxAdapter(child: MyCarouselSlider()),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          'Konsultasi gratis',
                          style: Config.textStyleHeadlineSmall,
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      sliver: SliverToBoxAdapter(
                        child: SizedBox(
                          height: 55,
                          child: MyFilledButton(
                            onPressed: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const CategorySessionsPage())),
                            labelText: 'Konsultasi',
                            buttonStyle: FilledButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              textStyle: Config.textStyleHeadlineSmall.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          ),
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
                              padding: EdgeInsets.only(left: index == 0 ? 20.0 : 8.0, right: index == stateAskTheExpert.topikPertanyaans.length - 1 ? 20.0 : 0.0),
                              child: ChoiceChip(
                                label: Text(topikPertanyaan.namaTopik ?? '?'),
                                selected: index == stateAskTheExpert.selectedTopikPertanyaan,
                                onSelected: (value) {
                                  MyApp.askTheExpertBloc.add(SetSelectedTopikPertanyaan(index: index));
                                  _pageController.animateToPage(index, duration: kDurationShort4, curve: Curves.fastOutSlowIn);
                                },
                              ),
                            );
                          },
                          itemCount: stateAskTheExpert.topikPertanyaans.length,
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 10.0)),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      sliver: SliverToBoxAdapter(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pertanyaan dari Sobat RAMA',
                              style: Config.textStyleHeadlineSmall,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  showAllQuestions = !showAllQuestions;
                                });
                              },
                              child: Text(showAllQuestions ? 'Lihat sedikit' : 'Lihat semua', style: Config.textStyleBodyMedium.copyWith(decoration: TextDecoration.underline)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 10.0)),
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
                          controller: _pageController,
                          itemBuilder: (context, pageIndex) {
                            List<TanyaAhli> tanyaAhlis = showAllQuestions ? stateAskTheExpert.tanyaAhlis[pageIndex] : stateAskTheExpert.tanyaAhlis[pageIndex].take(4).toList();

                            tanyaAhlis.sort((a, b) => b.waktuTanya!.compareTo(a.waktuTanya!));

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
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                TanyaAhli tanyaAhli = tanyaAhlis[index];

                                return ListTile(
                                  isThreeLine: true,
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  onTap: () => NavigationHelper.to(
                                    MaterialPageRoute(
                                      builder: (context) => ChatAskTheExpertPage(
                                        topicIndex: pageIndex,
                                        index: index,
                                      ),
                                    ),
                                  ),
                                  leading: ImageContainer.hero(
                                    tag: 'Profile picture $index',
                                    width: 48.0,
                                    height: 48.0,
                                    iconSize: 24.0,
                                    icon: Icons.person,
                                    border: const Border(),
                                    image: const NetworkImage('https://dev-sirama.propertiideal.id/storage/test/person.png'),
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
              ),
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
