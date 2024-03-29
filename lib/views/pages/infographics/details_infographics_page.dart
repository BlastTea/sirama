part of '../pages.dart';

class DetailsInfographicsPage extends StatefulWidget {
  const DetailsInfographicsPage({
    super.key,
    required this.infographic,
  });

  final Infografis infographic;

  @override
  State<DetailsInfographicsPage> createState() => _DetailsInfographicsPageState();
}

class _DetailsInfographicsPageState extends State<DetailsInfographicsPage> {
  @override
  Widget build(BuildContext context) => BlocBuilder<ContentFavoriteBloc, ContentFavoriteState>(
        builder: (context, stateContentFavorite) {
          if (stateContentFavorite is ContentFavoriteDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Text(widget.infographic.judulInfografis!),
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
                            child: ImageContainer.hero(
                              borderRadius: BorderRadius.circular(10.0),
                              border: const Border(),
                              tag: 'infografis ${widget.infographic.idInfografis}',
                              image: NetworkImage('https://dev-sirama.propertiideal.id/storage/infografis/${widget.infographic.gambarInfografis}'),
                              extendedAppBar: AppBar(
                                title: Text(stateContentFavorite.currentInfografis?.infografis?.judulInfografis ?? '?'),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Text(stateContentFavorite.currentInfografis?.infografis?.judulInfografis ?? '?', style: Config.textStyleTitleSmall.copyWith(fontSize: 14)),
                                        const SizedBox(height: 5),
                                        Text(stateContentFavorite.currentInfografis?.infografis?.deskripsiInfografis ?? 'Tidak ada deskripsi'),
                                        const SizedBox(height: 20),
                                        const Text('Diupload oleh Admin'),
                                        Text(stateContentFavorite.currentInfografis?.infografis?.tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true) ?? '?'),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () => MyApp.contentFavoriteBloc.add(ToggleInfografisFavoritePressed()),
                                        icon: Icon((stateContentFavorite.currentInfografis?.infografis?.isFavorited ?? false) ? Icons.favorite : Icons.favorite_border),
                                      ),
                                      Text(stateContentFavorite.currentInfografis?.infografis?.totalLikes?.toString() ?? '0'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
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
                    const SizedBox(height: 20),
                    InfographicsPage.listInfgraphics(
                      context: context,
                      favInfografis: stateContentFavorite.infografis,
                      replaceCurrentPage: true,
                      currentInfographics: widget.infographic.idInfografis,
                    )
                  ],
                ),
              ),
            );
          } else if (stateContentFavorite is ContentFavoriteError) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Text(widget.infographic.judulInfografis!),
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
              title: Text(widget.infographic.judulInfografis!),
              centerTitle: true,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
