part of '../../../pages.dart';

class FavInfographics extends StatelessWidget {
  const FavInfographics({super.key});

  static Widget listFavInfographics({
    required BuildContext context,
    required FavInfografisDataLoaded stateFavInfographics,
    bool replaceCurrentPage = false,
    int? currentFavInfographics,
  }) =>
      ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          FavInfografis favinfografis = stateFavInfographics.favinfografiss[index];

          if (favinfografis.idFavInfografis == currentFavInfographics) return Container();

          return InkWell(
            onTap: () {
              Route route = MaterialPageRoute(
                builder: (context) => DetailsFavfavinfografisPage(
                  favinfografis: favinfografis,
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
                        child: Image.network(
                          'https://dev-sirama.propertiideal.id/storage/infografis/${favinfografis.gambarInfografis}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: favinfografis.judulInfografis!,
                    user: favinfografis.uploadUserId.toString(),
                    tanggalUpload: favinfografis.tanggalUpload!.toFormattedDate(
                        withWeekday: true, withMonthName: true),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: stateFavInfographics.favinfografiss.length,
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavInfografisBloc, FavInfografisState>(
      builder: (context, stateFavInfographics) {
        if (MyApp.favInfografisBloc.state is FavInfografisInitial) {
          MyApp.favInfografisBloc.add(InitializeFavInfografisData());
        }

        if (stateFavInfographics is FavInfografisDataLoaded) {
          return Scaffold(
            body: SafeArea(
              child: ListView(
                shrinkWrap: true,
                children: [
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
                  listFavInfographics(
                      context: context, stateFavInfographics: stateFavInfographics),
                ],
              ),
            ),
          );
        } else if (stateFavInfographics is FavInfografisInitial) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (stateFavInfographics is FavInfografisError) {
          return Scaffold(
            body: ErrorOccuredButton(
              onRetryPressed: () =>
                  MyApp.favInfografisBloc.add(InitializeFavInfografisData()),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
