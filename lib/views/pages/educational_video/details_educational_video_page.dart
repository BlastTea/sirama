part of '../pages.dart';

class DetailsEducationalVideoPage extends StatefulWidget {
  const DetailsEducationalVideoPage({
    super.key,
    required this.educationalVideo,
  });

  final EducationalVideo educationalVideo;

  @override
  State<DetailsEducationalVideoPage> createState() => _DetailsEducationalVideoPageState();
}

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
              ),
              body: SafeArea(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: PodVideoPlayer(controller: _podPlayerController),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              widget.educationalVideo.judulVideoEdukasi ?? '?',
                              style: Config.textStyleTitleMedium,
                            ),
                          ),
                          subtitle: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.favorite),
                                ),
                                const Text('1231'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: EducationalVideoPage.listVideo(
                        context: context,
                        stateEducationalVideo: stateEducationalVideo,
                        replaceCurrentPage: true,
                        currentEducationVideo: widget.educationalVideo.idVideoEdukasi,
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
