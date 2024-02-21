part of '../pages.dart';

class DetailsEducationalVideoPage extends StatefulWidget {
  const DetailsEducationalVideoPage({
    super.key,
    required this.videoEdukasi,
  });

  final VideoEdukasi videoEdukasi;

  @override
  State<DetailsEducationalVideoPage> createState() => _DetailsEducationalVideoPageState();
}

class _DetailsEducationalVideoPageState extends State<DetailsEducationalVideoPage> {
  late final PodPlayerController _podPlayerController;

  @override
  void initState() {
    super.initState();
    _podPlayerController = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.videoEdukasi.linkVideoEdukasi!),
      podPlayerConfig: const PodPlayerConfig(
        autoPlay: !kDebugMode,
      ),
    )..initialise();
  }

  @override
  void dispose() {
    _podPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<ContentFavoriteBloc, ContentFavoriteState>(
        builder: (context, stateContentFavorite) {
          if (stateContentFavorite is ContentFavoriteDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Text('Video Edukasi'),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: IconButton(onPressed: () => (widget.videoEdukasi.linkVideoEdukasi!.isNotEmpty) ? Share.shareUri(Uri.parse(widget.videoEdukasi.linkVideoEdukasi!)) : null, icon: SvgPicture.asset('assets/icons/share-icons.svg')),
                  ),
                ],
              ),
              body: SafeArea(
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    const MyContentWidget(
                      jenisKonten: 'Podcast',
                      untukUsia: '17-21 Tahun',
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        stateContentFavorite.currentVideoEdukasi?.videoEdukasi?.judulVideoEdukasi ?? '?',
                        style: Config.textStyleTitleMedium,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: PodVideoPlayer(controller: _podPlayerController),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                            subtitle: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Disukai', style: Config.textStyleBodyMedium.copyWith(color: Colors.black)),
                                  IconButton(
                                    onPressed: () => MyApp.contentFavorite.add(ToggleVideoEdukasiFavoritePressed()),
                                    icon: Icon((stateContentFavorite.currentVideoEdukasi?.videoEdukasi?.isFavorited ?? false) ? Icons.favorite : Icons.favorite_border),
                                  ),
                                  Text(stateContentFavorite.currentVideoEdukasi?.videoEdukasi?.totalLikes?.toString() ?? '0'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: RichText(
                        text: TextSpan(
                          text: stateContentFavorite.currentVideoEdukasi?.videoEdukasi?.deksripsiVideoEdukasi ?? 'Tidak ada deskripsi',
                          style: Config.textStyleBodyMedium.copyWith(color: Colors.black),
                        ),
                      ),
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
                    EducationalVideoPage.listVideo(
                      context: context,
                      favVideoEdukasis: stateContentFavorite.videoEdukasis,
                      replaceCurrentPage: true,
                      currentEducationVideo: widget.videoEdukasi.idVideoEdukasi,
                    ),
                  ],
                ),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Video Edukasi'),
              centerTitle: true,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
