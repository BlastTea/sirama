part of '../../../pages.dart';

class DetailFavEducationalVideoPage extends StatefulWidget {
  const DetailFavEducationalVideoPage({
    super.key,
    required this.favvideoedukasi,
  });

  final FavVideoEdukasi favvideoedukasi;

  @override
  State<DetailFavEducationalVideoPage> createState() => DetailFavEducationalVideoPageState();
}

class DetailFavEducationalVideoPageState extends State<DetailFavEducationalVideoPage> {
  late final PodPlayerController _podPlayerController;

  @override
  void initState() {
    super.initState();
    _podPlayerController = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.favvideoedukasi.educationalVideo!.judulVideoEdukasi!),
    )..initialise();
  }

  @override
  void dispose() {
    _podPlayerController.dispose();
    super.dispose();
  }

  void onShare(BuildContext context) async {
    if (widget.favvideoedukasi.educationalVideo!.linkVideoEdukasi!.isNotEmpty) {
      await Share.shareUri(Uri.parse(widget.favvideoedukasi.educationalVideo!.linkVideoEdukasi!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavVideoEdukasiBloc, FavVideoEdukasiState>(
      builder: (context, stateFavVideoEdukasi) {
        if (stateFavVideoEdukasi is FavVideoEdukasiDataLoaded) {
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
                      widget.favvideoedukasi.educationalVideo!.judulVideoEdukasi ?? '?',
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
                              Text(widget.favvideoedukasi.educationalVideo!.totalLikes?.toString() ?? '0'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(widget.favvideoedukasi.educationalVideo!.deksripsiVideoEdukasi ?? '?',
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
                    child: FavEducationalVideo.listVideo(
                      context: context,
                      stateFavVideoEdukasi: stateFavVideoEdukasi,
                      replaceCurrentPage: true,
                      currentVideoEdukasi: widget.favvideoedukasi.idVideoEdukasi,
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
