part of '../pages.dart';

class FilmPage extends StatelessWidget {
  const FilmPage({super.key});

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
    if (MyApp.filmVideoBloc.state is FilmVideoInitial) {
      MyApp.filmVideoBloc.add(InitializeFilmVideoData());
    }

    return BlocBuilder<FilmVideoBloc, FilmVideoState>(
      builder: (context, stateFilm) {
        if (stateFilm is FilmVideoDataLoaded) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Film Edukasi'),
              centerTitle: true,
            ),
            body: SafeArea(
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: CardTile(
                      title: Text('Bagaimana sih gambaran Bullying di dunia nyata? Hmmm...'),
                      button: Text('Yuk! biar Sobat RAMA ngga bosan luangkan waktu untuk menonton Film!'),
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
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: listVideo(
                      context: context,
                      stateFilm: stateFilm,
                    ),
                  )
                ],
              ),
            ),
          );
        } else if (stateFilm is FilmVideoError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Film Edukasi'),
              centerTitle: true,
            ),
            body: ErrorOccuredButton(
              onRetryPressed: () => MyApp.filmVideoBloc.add(InitializeFilmVideoData()),
            ),
          );
        }

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
      },
    );
  }
}
