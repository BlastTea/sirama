part of '../pages.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MyApp.contentFavoriteBloc.state is ContentFavoriteInitial) MyApp.contentFavoriteBloc.add(InitializeContentFavoriteData());

    return BlocBuilder<ContentFavoriteBloc, ContentFavoriteState>(
      builder: (context, stateFavorite) {
        if (stateFavorite is ContentFavoriteDataLoaded) {
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
                    favFilms: stateFavorite.films.where((element) => element.film!.isFavorited).toList(),
                  ),
                  PodcastPage.listPodcast(
                    context: context,
                    favPodcasts: stateFavorite.podcasts.where((element) => element.podcast!.isFavorited).toList(),
                  ),
                  EducationalVideoPage.listVideo(
                    context: context,
                    favVideoEdukasis: stateFavorite.videoEdukasis.where((element) => element.videoEdukasi!.isFavorited).toList(),
                  ),
                  InfographicsPage.listInfgraphics(
                    context: context,
                    favInfografis: stateFavorite.infografis.where((element) => element.infografis!.isFavorited).toList(),
                  ),
                ],
              ),
            ),
          );
        } else if (stateFavorite is ContentFavoriteError) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Favorit'),
              centerTitle: true,
            ),
            body: ErrorOccuredButton(
              onRetryPressed: () => MyApp.contentFavoriteBloc.add(InitializeContentFavoriteData()),
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
