part of '../pages.dart';

class DetailsEducationalVideoPage extends StatefulWidget {
  const DetailsEducationalVideoPage({
    super.key,
    required this.educationalVideo,
    this.favEducationalVideo,
  });

  final VideoEdukasi educationalVideo;
  final FavVideoEdukasi? favEducationalVideo;

  @override
  State<DetailsEducationalVideoPage> createState() => _DetailsEducationalVideoPageState();
}

bool isFavorited = true;

class _DetailsEducationalVideoPageState extends State<DetailsEducationalVideoPage> {
  late final PodPlayerController _podPlayerController;

  @override
  void initState() {
    super.initState();
    _podPlayerController = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.educationalVideo.linkVideoEdukasi!),
    )..initialise();
  }

  @override
  void dispose() {
    _podPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<EducationalVideoBloc, EducationalVideoState>(
        builder: (context, stateEducationalVideo) {
          if (stateEducationalVideo is EducationalVideoDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Text('Video Edukasi'),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: IconButton(onPressed: () => (widget.educationalVideo.linkVideoEdukasi!.isNotEmpty) ? Share.shareUri(Uri.parse(widget.educationalVideo.linkVideoEdukasi!)) : null, icon: SvgPicture.asset('assets/icons/share-icons.svg')),
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
                      jenisKonten: 'Podcast',
                      untukUsia: '17-21 Tahun',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        widget.educationalVideo.judulVideoEdukasi ?? '?',
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
                                    onPressed: () {
                                      setState(() {
                                        isFavorited = !isFavorited;
                                      });
                                    },
                                    icon: Icon(
                                      isFavorited ? Icons.favorite : Icons.favorite_border,
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  Text(widget.educationalVideo.totalLikes?.toString() ?? '0'),
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
                          text: (widget.educationalVideo.deksripsiVideoEdukasi ?? '').trim().isEmpty ? 'Tidak ada deskripsi' : widget.educationalVideo.deksripsiVideoEdukasi!,
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
                      videoEdukasis: stateEducationalVideo.educationalVideos,
                      replaceCurrentPage: true,
                      currentEducationVideo: widget.educationalVideo.idVideoEdukasi,
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
