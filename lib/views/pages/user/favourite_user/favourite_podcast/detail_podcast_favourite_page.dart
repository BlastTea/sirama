part of '../../../pages.dart';

class DetailFavPodcastPage extends StatefulWidget {
  const DetailFavPodcastPage({
    super.key,
    required this.favpodcast,
  });

  final FavPodcastVideo favpodcast;

  @override
  State<DetailFavPodcastPage> createState() => DetailFavPodcastPageState();
}

class DetailFavPodcastPageState extends State<DetailFavPodcastPage> {
  late final PodPlayerController _podPlayerController;

  @override
  void initState() {
    super.initState();
    _podPlayerController = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.favpodcast.podcastVideo!.linkPodcast!),
    )..initialise();
  }

  @override
  void dispose() {
    _podPlayerController.dispose();
    super.dispose();
  }

  void onShare(BuildContext context) async {
    if (widget.favpodcast.podcastVideo!.linkPodcast!.isNotEmpty) {
      await Share.shareUri(Uri.parse(widget.favpodcast.podcastVideo!.linkPodcast!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavPodcastBloc, FavPodcastState>(
      builder: (context, statefavpodcast) {
        if (statefavpodcast is FavPodcastDataLoaded) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Favorit Video Edukasi'),
              centerTitle: true,
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
            ),
            body: SafeArea(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const MyContentWidget(
                    jenisKonten: 'Film',
                    untukUsia: '17-21 Tahun',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      widget.favpodcast.podcastVideo!.judulPodcast ?? '?',
                      style: Config.textStyleTitleMedium,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: PodVideoPlayer(controller: _podPlayerController),
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
                              Text(widget.favpodcast.podcastVideo!.totalLikes?.toString() ?? '0'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(widget.favpodcast.podcastVideo!.deksripsiPodcast ?? '?',
                        style: Config.textStyleBodyMedium
                            .copyWith(color: Colors.black)),
                  ),
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: FavPodcast.listPodcast(
                      context: context,
                      stateFavPodcast: statefavpodcast,
                      replaceCurrentPage: true,
                      currentPodcast: widget.favpodcast.podcastVideo!.idPodcast,
                    ),
                  )
                ],
              ),
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('Favorit Video Edukasi'),
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
