part of '../pages.dart';

class DetailsInfographicsPage extends StatefulWidget {
  const DetailsInfographicsPage({super.key, required this.infographic});

  final Infografis infographic;

  @override
  State<DetailsInfographicsPage> createState() =>
      _DetailsInfographicsPageState();
}

class _DetailsInfographicsPageState extends State<DetailsInfographicsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfographicsBloc, InfographicsState>(
      builder: (context, stateInfographics) {
        if (stateInfographics is InfographicsDataLoaded) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
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
                          child: Container(
                              decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://dev-sirama.propertiideal.id/storage/infografis/${widget.infographic.gambarInfografis}',
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
                                            widget.infographic.judulInfografis!,
                                            style: Config.textStyleTitleSmall
                                                .copyWith(fontSize: 14)),
                                        const SizedBox(height: 5),
                                        Text(
                                          widget
                                              .infographic.deskripsiInfografis!,
                                        ),
                                        const SizedBox(height: 20),
                                        const Text('Diupload oleh Admin'),
                                        Text(widget.infographic.tanggalUpload!
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
                                      Text(widget.infographic.totalLikes
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
                  InfographicsPage.listInfgraphics(
                    context: context,
                    stateInfographics: stateInfographics,
                    replaceCurrentPage: true,
                    currentInfographics: widget.infographic.idInfografis,
                  )
                ],
              )));
        } else if (stateInfographics is InfographicsInitial) {
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
        } else if (stateInfographics is InfographicsError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(widget.infographic.judulInfografis!),
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
