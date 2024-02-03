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
                            widget.film.judulFilm ?? '?',
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
                              Text(widget.film.totalLikes?.toString() ?? '0'),
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
