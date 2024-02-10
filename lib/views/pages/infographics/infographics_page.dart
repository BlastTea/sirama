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

  static Widget carouselSlider({
    required BuildContext context,
    required InfographicsDataLoaded state,
    bool replaceCurrentPage = false,
    int? currentInfographics,
  }) =>
      CarouselSlider.builder(
        itemCount: state.infografis.length,
        itemBuilder: (context, index, realIdx) {
          Infografis infographic = state.infografis[index];

          if (infographic.idInfografis == currentInfographics) return Container();

          return InkWell(
            onTap: () {
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
              tag:
                  'https://dev-sirama.propertiideal.id/storage/infografis/${infographic.gambarInfografis}',
              image: NetworkImage(
                  'https://dev-sirama.propertiideal.id/storage/infografis/${infographic.gambarInfografis}'),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: carouselSlider(
                        context: context, state: stateInfographics),
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
