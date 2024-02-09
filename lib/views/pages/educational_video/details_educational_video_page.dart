part of '../pages.dart';

class DetailsEducationalVideoPage extends StatefulWidget {
  const DetailsEducationalVideoPage({
    super.key,
    required this.educationalVideo,
  });

  final EducationalVideo educationalVideo;

  @override
  State<DetailsEducationalVideoPage> createState() =>
      _DetailsEducationalVideoPageState();
}

bool isFavorited = false;

class _DetailsEducationalVideoPageState
    extends State<DetailsEducationalVideoPage> {
  late final PodPlayerController _podPlayerController;

  @override
  void initState() {
    super.initState();
    _podPlayerController = PodPlayerController(
      playVideoFrom:
          PlayVideoFrom.youtube(widget.educationalVideo.linkVideoEdukasi!),
    )..initialise();
  }

  @override
  void dispose() {
    _podPlayerController.dispose();
    super.dispose();
  }

  void onShare(BuildContext context) async {
    if (widget.educationalVideo.linkVideoEdukasi!.isNotEmpty) {
      await Share.shareUri(
          Uri.parse(widget.educationalVideo.linkVideoEdukasi!));
    }
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<EducationalVideoBloc, EducationalVideoState>(
        builder: (context, stateEducationalVideo) {
          if (stateEducationalVideo is EducationalVideoDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.white,
                  title: const Text('Video Edukasi'),
                  centerTitle: true,
                  actions: [
                    IconButton(
                        onPressed: () {
                          onShare(context);
                        },
                        icon: SvgPicture.asset('assets/icons/share-icons.svg')),
                  ]),
              body: SafeArea(
                child: ListView(
                  children: [
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
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
                                Text('Disukai',
                                    style: Config.textStyleBodyMedium
                                        .copyWith(color: Colors.black)),
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
                                Text(widget.educationalVideo.totalLikes
                                        ?.toString() ??
                                    '0'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(widget.educationalVideo.deksripsiVideoEdukasi ?? '?',
                                    style: Config.textStyleBodyMedium
                                        .copyWith(color: Colors.black)),
                    const SizedBox(height: 20),
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
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: EducationalVideoPage.listVideo(
                        context: context,
                        stateEducationalVideo: stateEducationalVideo,
                        replaceCurrentPage: true,
                        currentEducationVideo:
                            widget.educationalVideo.idVideoEdukasi,
                      ),
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
