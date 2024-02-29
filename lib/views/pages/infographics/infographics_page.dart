part of '../pages.dart';

class InfographicsPage extends StatelessWidget {
  const InfographicsPage({super.key});

  static Widget listInfgraphics({
    required BuildContext context,
    required List<FavInfografis> favInfografis,
    bool replaceCurrentPage = false,
    int? currentInfographics,
  }) =>
      favInfografis.isEmpty
          ? Center(
              child: Text(
                'Tidak ada data',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                Infografis infographic = favInfografis[index].infografis!;

                if (infographic.idInfografis == currentInfographics) return Container();

                return InkWell(
                  onTap: () {
                    MyApp.contentFavoriteBloc.add(InitializeEditInfografisData(favInfografis: favInfografis[index]));

                    Route route = MaterialPageRoute(
                      builder: (context) => DetailsInfographicsPage(
                        infographic: infographic,
                      ),
                    );

                    if (replaceCurrentPage) {
                      NavigationHelper.toReplacement(route);
                    } else {
                      NavigationHelper.to(route);
                    }
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: InfographicsListItem(
                          thumbnail: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Hero(
                                tag: 'infografis ${infographic.idInfografis}',
                                child: Image.network(
                                  'https://dev-sirama.propertiideal.id/storage/infografis/${infographic.gambarInfografis}',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          title: infographic.judulInfografis!,
                          user: infographic.uploadUserId.toString(),
                          tanggalUpload: infographic.tanggalUpload!.toFormattedDate(withWeekday: true, withMonthName: true),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: favInfografis.length,
            );

  static Widget carouselSlider({
    required BuildContext context,
    required List<FavInfografis> favInfografis,
    bool replaceCurrentPage = false,
    int? currentInfographics,
  }) =>
      CarouselSlider.builder(
        itemCount: favInfografis.length,
        itemBuilder: (context, index, realIdx) {
          Infografis infographic = favInfografis[index].infografis!;

          if (infographic.idInfografis == currentInfographics) return Container();

          return InkWell(
            onTap: () {
              MyApp.contentFavoriteBloc.add(InitializeEditInfografisData(favInfografis: favInfografis[index]));

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsInfographicsPage(
                    infographic: infographic,
                  ),
                ),
              );
            },
            child: ImageContainer.hero(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              tag: 'https://dev-sirama.propertiideal.id/storage/infografis/${infographic.gambarInfografis}',
              image: NetworkImage('https://dev-sirama.propertiideal.id/storage/infografis/${infographic.gambarInfografis}'),
              border: const Border(),
              borderRadius: BorderRadius.circular(5.0),
              extendedAppBar: AppBar(),
            ),
          );
        },
        options: CarouselOptions(
          viewportFraction: 0.8,
          aspectRatio: 20 / 21,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
        ),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<ContentFavoriteBloc, ContentFavoriteState>(
        builder: (context, stateContentFavorite) {
          if (stateContentFavorite is ContentFavoriteDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Text("Infografis Edukasi"),
                centerTitle: true,
              ),
              body: SafeArea(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: carouselSlider(
                        context: context,
                        favInfografis: stateContentFavorite.infografis,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            'Infografis terbaru',
                            style: Config.textStyleTitleMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    listInfgraphics(
                      context: context,
                      favInfografis: stateContentFavorite.infografis,
                    ),
                  ],
                ),
              ),
            );
          } else if (stateContentFavorite is ContentFavoriteError) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Text('Infografis Edukasi'),
                centerTitle: true,
              ),
              body: ErrorOccuredButton(
                onRetryPressed: () => MyApp.contentFavoriteBloc.add(InitializeContentFavoriteData()),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Infografis Edukasi'),
              centerTitle: true,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
