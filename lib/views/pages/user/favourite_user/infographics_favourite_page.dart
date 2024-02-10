part of '../../pages.dart';

class FavInfographics extends StatelessWidget {
  const FavInfographics({super.key});
  static Widget listInfgraphics({
    required BuildContext context,
    required InfographicsDataLoaded stateInfographics,
    bool replaceCurrentPage = false,
    int? currentInfographics,
  }) =>
      ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          Infografis infographic = stateInfographics.infografis[index];

          if (infographic.idInfografis == currentInfographics)
            return Container();

          return InkWell(
            onTap: () {
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
                        child: Image.network(
                          'https://dev-sirama.propertiideal.id/storage/infografis/${infographic.gambarInfografis}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: infographic.judulInfografis!,
                    user: infographic.uploadUserId.toString(),
                    tanggalUpload: infographic.tanggalUpload!.toFormattedDate(
                        withWeekday: true, withMonthName: true),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: stateInfographics.infografis.length,
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavInfografisBloc, FavInfografisState>(
      builder: (context, stateFavInfografis) {
        if (MyApp.favInfografisBloc.state is FavInfografisInitial) {
          MyApp.favInfografisBloc.add(InitializeFavInfografisData());
        }
        return const Scaffold(
            body: Center(
          child: Text('Fav Info'),
        ));
      },
    );
  }
}
