part of '../pages.dart';

class DetailsPodcastPage extends StatefulWidget {
  const DetailsPodcastPage({
    super.key,
    required this.podcast,
  });

  final PodcastVideo podcast;

  @override
  State<DetailsPodcastPage> createState() => DetailsPodcastPageState();
}

class DetailsPodcastPageState extends State<DetailsPodcastPage> {
  late final PodPlayerController _podPlayerController;
  bool isFavorited = false;

  @override
  void initState() {
    super.initState();
    _podPlayerController = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.podcast.linkPodcast!),
    )..initialise();
  }

  @override
  void dispose() {
    _podPlayerController.dispose();
    super.dispose();
  }

  void onShare(BuildContext context) async {
    if (widget.podcast.linkPodcast!.isNotEmpty) {
      await Share.shareUri(Uri.parse(widget.podcast.linkPodcast!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PodcastBloc, PodcastState>(
      builder: (context, statePodcast) {
        if (statePodcast is PodcastDataLoaded) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: IconButton(
                        onPressed: () {
                          onShare(context);
                        },
                        icon: SvgPicture.asset('assets/icons/share-iconss.svg')),
                  ),
                ],
                title: const Text("Podcast Edukasi"),
                centerTitle: true,
              ),
              body: SafeArea(
                  child: ListView(shrinkWrap: true, children: [
                const SizedBox(
                  height: 20,
                ),
                const MyContentWidget(
                  jenisKonten: 'Podcast',
                  untukUsia: '17-21 Tahun',
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(widget.podcast.judulPodcast ?? '?',
                          style: Config.textStyleHeadlineSmall.copyWith(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      PodVideoPlayer(controller: _podPlayerController),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      subtitle: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text('Disukai',
                                  style: Config.textStyleBodyMedium
                                      .copyWith(color: Colors.black)),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavorited = !isFavorited;
                                });
                              },
                              icon: Icon(
                                isFavorited
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                              ),
                            ),
                            Text(widget.podcast.totalLikes?.toString() ?? '0'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(widget.podcast.deksripsiPodcast ?? '?',
                      style: Config.textStyleBodyMedium
                          .copyWith(color: Colors.black)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Video lainnya',
                        style: Config.textStyleHeadlineSmall,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20),
                    child: PodcastPage.listPodcast(
                      context: context,
                      statePodcast: statePodcast,
                      replaceCurrentPage: true,
                      currentPodcast: widget.podcast.idPodcast,
                    ))
              ])));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
