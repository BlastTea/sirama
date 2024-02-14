part of '../../../pages.dart';

class FavPodcast extends StatelessWidget {
  const FavPodcast({super.key});
  static Widget listPodcast({
    required BuildContext context,
    required FavPodcastDataLoaded stateFavPodcast,
    bool replaceCurrentPage = false,
    int? currentPodcast,
  }) =>
      ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          FavPodcastVideo favPodcast = stateFavPodcast.favPodcasts[index];

          if (favPodcast.idFavPodcast == currentPodcast) return Container();

          return InkWell(
            onTap: () {
              Route route = MaterialPageRoute(
                builder: (context) => DetailFavPodcastPage(
                  favpodcast: favPodcast,
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
                    child: favPodcast.thumbnailImageData != null
                        ? Image.memory(
                            Uint8List.fromList(favPodcast.thumbnailImageData!),
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
                    favPodcast.judulPodcast ?? '?',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Admin . ${stateFavPodcast.favPodcasts[index].tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true)}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: stateFavPodcast.favPodcasts.length,
      );

  @override
  Widget build(BuildContext context) {
    if (MyApp.favPodcastBloc.state is FavPodcastInitial) {
      MyApp.favPodcastBloc.add(InitializeFavPodcastData());
    }
    return BlocBuilder<FavPodcastBloc, FavPodcastState>(
      builder: (context, stateFavPodcast) {
        if (stateFavPodcast is FavPodcastDataLoaded) {
          return Scaffold(
              body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: listPodcast(
              context: context,
              stateFavPodcast: stateFavPodcast,
            ),
          ));
        } else if (stateFavPodcast is FavPodcastError) {
          return Scaffold(
            body: ErrorOccuredButton(
              onRetryPressed: () =>
                  MyApp.favPodcastBloc.add(InitializeFavPodcastData()),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
