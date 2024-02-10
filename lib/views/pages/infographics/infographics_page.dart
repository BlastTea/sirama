part of '../pages.dart';

class InfographicsPage extends StatelessWidget {
  const InfographicsPage({super.key});

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
    return BlocBuilder<InfographicsBloc, InfographicsState>(
      builder: (context, stateInfographics) {
        if (MyApp.infografisBloc.state is InfographicsInitial) {
          MyApp.infografisBloc.add(InitializeInfographicsData());
        }

        if (stateInfographics is InfographicsDataLoaded) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: CardTile(
                      title: Text(
                          'Bagaimana sih gambaran Bullying di dunia nyata? Hmmm...'),
                      button: Text(
                          'Yuk! biar Sobat RAMA ngga bosan luangkan waktu untuk menonton Film!'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Infografis terbaru',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  listInfgraphics(
                      context: context, stateInfographics: stateInfographics),
                ],
              ),
            ),
          );
        } else if (stateInfographics is InfographicsInitial) {
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
        } else if (stateInfographics is InfographicsError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Infografis Edukasi'),
              centerTitle: true,
            ),
            body: ErrorOccuredButton(
              onRetryPressed: () =>
                  MyApp.infografisBloc.add(InitializeInfographicsData()),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
