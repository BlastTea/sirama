part of '../pages.dart';

class PodcastPage extends StatelessWidget {
  const PodcastPage({super.key});

  static Widget listPodcast({
    required BuildContext context,
    required List<FavPodcast> favPodcasts,
    bool replaceCurrentPage = false,
    int? currentPodcast,
  }) =>
      favPodcasts.isEmpty
          ? Center(
              child: Text(
                'Tidak ada data',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              itemBuilder: (context, index) {
                Podcast podcast = favPodcasts[index].podcast!;

                if (podcast.idPodcast == currentPodcast) return Container();

                return InkWell(
                  onTap: () {
                    MyApp.contentFavoriteBloc.add(InitializeEditPodcastData(favPodcast: favPodcasts[index]));

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
                          backgroundImage: AssetImage('assets/user.png'),
                        ),
                        title: Text(
                          podcast.judulPodcast ?? '?',
                          style: Config.textStyleHeadlineSmall.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Admin . ${podcast.tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true)}',
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                );
              },
              itemCount: favPodcasts.length,
            );

  @override
  Widget build(BuildContext context) => BlocBuilder<ContentFavoriteBloc, ContentFavoriteState>(
        builder: (context, stateContentFavorite) {
          if (stateContentFavorite is ContentFavoriteDataLoaded) {
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CardTile(
                        title: Text(
                          'Bagaimana sih gambaran Bullying di dunia nyata? Hmmm... 🤔',
                          style: Config.textStyleTitleLarge.copyWith(color: Colors.white),
                        ),
                        button: Text(
                          'Yuk! biar Sobat RAMA ngga bosan luangkan waktu untuk menonton podcast!',
                          style: Config.textStyleBodyLarge.copyWith(color: Colors.white),
                        ),
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
                            'Podcast terbaru',
                            style: Config.textStyleHeadlineSmall.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    listPodcast(
                      context: context,
                      favPodcasts: stateContentFavorite.podcasts,
                    )
                  ],
                ),
              ),
            );
          } else if (stateContentFavorite is ContentFavoriteError) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Text('Podcast Edukasi'),
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
              title: const Text('Podcast Edukasi'),
              centerTitle: true,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
