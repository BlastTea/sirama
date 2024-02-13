part of '../../../pages.dart';

class FavPodcast extends StatelessWidget {
  const FavPodcast({super.key});
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
          PodcastVideo podcast = statePodcast.podcasts[index];

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
                    backgroundImage: AssetImage('assets/user.png'),
                  ),
                  title: Text(
                    podcast.judulPodcast ?? '?',
                    style: Config.textStyleHeadlineSmall
                        .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Admin . ${statePodcast.podcasts[index].tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true)}',
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
        itemCount: statePodcast.podcasts.length,
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavPodcastBloc, FavPodcastState>(
      builder: (context, stateFavPodcast) {
        if (MyApp.favPodcastBloc.state is FavPodcastInitial) {
          MyApp.favPodcastBloc.add(InitializeFavPodcastData());
        }
        return const Scaffold(
            body: Center(
          child: Text('Fav Podcast'),
        ));
      },
    );
  }
}
