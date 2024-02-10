part of '../../pages.dart';

class FavFilm extends StatelessWidget {
  const FavFilm({super.key});
  static Widget listVideo({
    required BuildContext context,
    required FilmVideoDataLoaded stateFilm,
    bool replaceCurrentPage = false,
    int? currentFilm,
  }) =>
      ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          Film film = stateFilm.films[index];

          if (film.idFilm == currentFilm) return Container();

          return InkWell(
            onTap: () {
              Route route = MaterialPageRoute(
                builder: (context) => DetailsFilmPage(
                  film: film,
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
                    child: film.thumbnailImageData != null
                        ? Image.memory(
                            Uint8List.fromList(film.thumbnailImageData!),
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
                    film.judulFilm ?? '?',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Admin . ${stateFilm.films[index].tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true)}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: stateFilm.films.length,
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavFilmBloc, FavFilmState>(
      builder: (context, stateFavFilm) {
        if (MyApp.favFilmBloc.state is FavFilmInitial) {
          MyApp.favFilmBloc.add(InitializeFavFilmData());
        }
        return const Scaffold(
            body: Center(
          child: Text('Fav Film'),
        ));
      },
    );
  }
}
