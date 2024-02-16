part of '../pages.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MyApp.filmBloc.state is FilmInitial) MyApp.filmBloc.add(InitializeFilmData());
    if (MyApp.podcastBloc.state is PodcastInitial) MyApp.podcastBloc.add(InitializePodcastData());
    if (MyApp.educationaVideoBloc.state is EducationalVideoInitial) MyApp.educationaVideoBloc.add(InitializeEducationalVideoData());
    if (MyApp.infografisBloc.state is InfographicsInitial) MyApp.infografisBloc.add(InitializeInfographicsData());
    if (MyApp.favoriteBloc.state is FavoriteInitial) MyApp.favoriteBloc.add(InitializeFavoriteData());

    return BlocBuilder<FavoriteBloc, FavoriteState>(
      builder: (context, stateFavorite) {
        if (stateFavorite is FavoriteDataLoaded) {
          return DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Favorit'),
                centerTitle: true,
                bottom: TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: [
                    'Film Edukasi',
                    'Podcast Edukasi',
                    'Video Edukasi',
                    'Infografis',
                  ].map((e) => Tab(text: e)).toList(),
                ),
              ),
              body: TabBarView(
                children: [
                  FilmPage.listVideo(
                    context: context,
                    films: stateFavorite.favFilms.map((e) => e.film!).toList(),
                  ),
                  PodcastPage.listPodcast(
                    context: context,
                    podcasts: stateFavorite.favPodcasts.map((e) => e.podcast!).toList(),
                  ),
                  EducationalVideoPage.listVideo(
                    context: context,
                    videoEdukasis: stateFavorite.favVideoEdukasis.map((e) => e.videoEdukasi!).toList(),
                  ),
                  InfographicsPage.listInfgraphics(
                    context: context,
                    infografis: stateFavorite.favInfografis.map((e) => e.infografis!).toList(),
                  ),
                ],
              ),
            ),
          );
        } else if (stateFavorite is FavoriteError) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Favorit'),
              centerTitle: true,
            ),
            body: ErrorOccuredButton(
              onRetryPressed: () => MyApp.favoriteBloc.add(InitializeFavoriteData()),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Favorit'),
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
