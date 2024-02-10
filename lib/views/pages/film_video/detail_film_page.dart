part of '../pages.dart';

class DetailsFilmPage extends StatefulWidget {
  const DetailsFilmPage({
    super.key,
    required this.film,
  });

  final Film film;

  @override
  State<DetailsFilmPage> createState() => DetailsFilmPageState();
}

class DetailsFilmPageState extends State<DetailsFilmPage> {
  late final PodPlayerController _podPlayerController;

  @override
  void initState() {
    super.initState();
    _podPlayerController = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.film.linkFilm!),
    )..initialise();
  }

  @override
  void dispose() {
    _podPlayerController.dispose();
    super.dispose();
  }

  void onShare(BuildContext context) async {
    if (widget.film.linkFilm!.isNotEmpty) {
      await Share.shareUri(Uri.parse(widget.film.linkFilm!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilmVideoBloc, FilmVideoState>(
      builder: (context, stateFilm) {
        if (stateFilm is FilmVideoDataLoaded) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Film Edukasi'),
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
                      widget.film.judulFilm ?? '?',
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
                              Text(widget.film.totalLikes?.toString() ?? '0'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(widget.film.deksripsiFilm ?? '?',
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
                    child: FilmPage.listVideo(
                      context: context,
                      stateFilm: stateFilm,
                      replaceCurrentPage: true,
                      currentFilm: widget.film.idFilm,
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
            title: const Text('Film Edukasi'),
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
