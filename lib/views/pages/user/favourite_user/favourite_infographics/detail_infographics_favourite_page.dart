part of '../../../pages.dart';

class DetailsFavfavinfografisPage extends StatefulWidget {
  const DetailsFavfavinfografisPage({super.key, required this.favinfografis});

  final FavInfografis favinfografis;

  @override
  State<DetailsFavfavinfografisPage> createState() =>
      _DetailsFavfavinfografisPageState();
}

class _DetailsFavfavinfografisPageState
    extends State<DetailsFavfavinfografisPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavInfografisBloc, FavInfografisState>(
      builder: (context, stateFavInfografis) {
        if (stateFavInfografis is FavInfografisDataLoaded) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                title: Text(widget.favinfografis.infografis!.judulInfografis!),
                centerTitle: true,
              ),
              body: SafeArea(
                  child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 148.75,
                          height: 210.50,
                          child: Container(
                              decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://dev-sirama.propertiideal.id/storage/infografis/${widget.favinfografis.infografis!.gambarInfografis}',
                              ),
                              fit: BoxFit.cover,
                            ),
                          )),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                            widget
                                                .favinfografis.infografis!.judulInfografis!,
                                            style: Config.textStyleTitleSmall
                                                .copyWith(fontSize: 14)),
                                        const SizedBox(height: 5),
                                        Text(
                                          widget.favinfografis
                                              .infografis!.deskripsiInfografis!,
                                        ),
                                        const SizedBox(height: 20),
                                        const Text('Diupload oleh Admin'),
                                        Text(widget.favinfografis.infografis!.tanggalUpload!
                                            .toFormattedDate(
                                                withWeekday: true,
                                                withMonthName: true)),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
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
                                      Text(widget.favinfografis.infografis!.totalLikes
                                              ?.toString() ??
                                          '0'),
                                    ],
                                  ),
                                ]),
                          ),
                        )
                      ],
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
                          'Infografis lainnya',
                          style: Config.textStyleTitleMedium,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FavInfographics.listFavInfographics(
                    context: context,
                    stateFavInfographics: stateFavInfografis,
                    replaceCurrentPage: true,
                    currentFavInfographics: widget.favinfografis.idInfografis,
                  )
                ],
              )));
        } else if (stateFavInfografis is FavInfografisInitial) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(widget.favinfografis.infografis!.judulInfografis!),
              centerTitle: true,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (stateFavInfografis is FavInfografisError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(widget.favinfografis.infografis!.judulInfografis!),
              centerTitle: true,
            ),
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
