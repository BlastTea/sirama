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
                title: const Text('Film Edukasi'),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: IconButton(
                      onPressed: () => (widget.film.linkFilm?.isNotEmpty ?? false) ? Share.shareUri(Uri.parse(widget.film.linkFilm!)) : null,
                      icon: SvgPicture.asset('assets/icons/share-iconss.svg'),
                    ),
                  ),
                ],
              ),
              body: SafeArea(
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    const MyContentWidget(
                      jenisKonten: 'Film',
                      untukUsia: '17-21 Tahun',
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        stateContentFavorite.currentFilm?.film?.judulFilm ?? '?',
                        style: Config.textStyleTitleMedium,
                      ),
                    ),
                    const SizedBox(height: 20),
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
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text('Disukai', style: Config.textStyleBodyMedium.copyWith(color: Colors.black)),
                                ),
                                IconButton(
                                  onPressed: () => MyApp.contentFavoriteBloc.add(ToggleFilmFavoritePressed()),
                                  icon: Icon((stateContentFavorite.currentFilm?.film?.isFavorited ?? false) ? Icons.favorite : Icons.favorite_border),
                                ),
                                Text(stateContentFavorite.currentFilm?.film?.totalLikes?.toString() ?? '0'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        stateContentFavorite.currentFilm?.film?.deksripsiFilm ?? 'Tidak ada deskripsi',
                        style: Config.textStyleBodyMedium.copyWith(color: Colors.black),
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
                    FilmPage.listVideo(
                      context: context,
                      favFilms: stateContentFavorite.films,
                      replaceCurrentPage: true,
                      currentFilm: widget.film.idFilm,
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
