part of '../pages.dart';

class PodcastPage extends StatelessWidget {
  static Widget listPodcast({
    required BuildContext context,
    required PodcastDataLoaded statePodcast,
    bool replaceCurrentPage = false,
    int? currentPodcast,
  }) =>
      ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          Podcast podcast = statePodcast.podcasts[index];

          if (podcast.idPodcast == currentPodcast) return Container();

          return InkWell(
            onTap: () {
              Route route = MaterialPageRoute(
                builder: (context) => DetailsPodcastPage(
                  podcast: podcast,
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
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: podcast.thumbnailImageData != null
                        ? Image.memory(
                            Uint8List.fromList(podcast.thumbnailImageData!),
                            fit: BoxFit.cover,
                          )
                        : Image.network(
                            'https://dev-sirama.propertiideal.id/storage/test/image not found.png',
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://dev-sirama.propertiideal.id/storage/test/shark.png'),
                  ),
                  title: Text(
                    podcast.judulPodcast ?? '?',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Zalorin Vexstar . ${statePodcast.podcasts[index].tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true)}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: statePodcast.podcasts.length,
      );

  const PodcastPage({super.key});
  @override
  Widget build(BuildContext context) {
    if (MyApp.podcastBloc.state is PodcastInitial) {
      MyApp.podcastBloc.add(InitializePodcastData());
    }
    return BlocBuilder<PodcastBloc, PodcastState>(
      builder: (context, statePodcast) {
        if (statePodcast is PodcastDataLoaded) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: const Text("Podcast Edukasi"),
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
                          'Yuk! biar Sobat RAMA ngga bosan luangkan waktu untuk menonton podcast!'),
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
                          'Video edukasi terbaru',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: listPodcast(
                          context: context, statePodcast: statePodcast))
                ],
              ),
            ),
          );
        } else if (statePodcast is PodcastInitial) {
          return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('Film Edukasi'),
            centerTitle: true,
          ),
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
        } else if (statePodcast is PodcastError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Podcast Edukasi'),
              centerTitle: true,
            ),
            body: ErrorOccuredButton(
              onRetryPressed: () => MyApp.podcastBloc.add(InitializePodcastData()),
            ),
          );
        } else {
          return Container();
        }
      },
    );
    //   },
    // );
  }
}
