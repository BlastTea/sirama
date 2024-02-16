part of '../../../pages.dart';

class FavFilm extends StatelessWidget {
  const FavFilm({super.key});
  static Widget listVideo({
    required BuildContext context,
    required FavFilmDataLoaded stateFavFilm,
    bool replaceCurrentPage = false,
    int? currentFilm,
  }) =>
      ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          FavFilmVideo favfilm = stateFavFilm.favfilms[index];

          if (favfilm.idFilm == currentFilm) return Container();

          return InkWell(
            onTap: () {
              Route route = MaterialPageRoute(
                builder: (context) => DetailFavFilmPage(
                  favfilm: favfilm,
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
                    child: favfilm.thumbnailImageData != null
                        ? Image.memory(
                            Uint8List.fromList(favfilm.thumbnailImageData!),
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
                    favfilm.film!.judulFilm ?? '?',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Admin . ${stateFavFilm.favfilms[index].film!.tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true)}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: stateFavFilm.favfilms.length,
      );

  @override
  Widget build(BuildContext context) {
    if (MyApp.favFilmBloc.state is FavFilmInitial) {
      MyApp.favFilmBloc.add(InitializeFavFilmData());
    }
    return BlocBuilder<FavFilmBloc, FavFilmState>(
      builder: (context, stateFavFilm) {
        if (stateFavFilm is FavFilmDataLoaded) {
          return Scaffold(
              body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: listVideo(
              context: context,
              stateFavFilm: stateFavFilm,
            ),
          ));
        } else if (stateFavFilm is FavFilmError) {
          return Scaffold(
            body: ErrorOccuredButton(
              onRetryPressed: () =>
                  MyApp.favFilmBloc.add(InitializeFavFilmData()),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
