part of '../pages.dart';

class DetailsPodcastPage extends StatefulWidget {
  const DetailsPodcastPage({
    super.key,
    required this.podcast,
  });

  final Podcast podcast;

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
                title: const Text("Video Edukasi"),
                centerTitle: true,
              ),
              body: SafeArea(
                  child: ListView(shrinkWrap: true, children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: PodVideoPlayer(controller: _podPlayerController),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(widget.podcast.judulPodcast ?? '?'),
                      ),
                      subtitle: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                        horizontal: 30, vertical: 10),
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
