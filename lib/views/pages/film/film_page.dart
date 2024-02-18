part of '../pages.dart';

class FilmPage extends StatelessWidget {
  const FilmPage({super.key});

  static Widget listVideo({
    required BuildContext context,
    required List<FavFilm> favFilms,
    bool replaceCurrentPage = false,
    int? currentFilm,
  }) =>
      favFilms.isEmpty
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
                Film film = favFilms[index].film!;

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
                          'Admin . ${film.tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true)}',
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: favFilms.length,
            );

  @override
  Widget build(BuildContext context) => BlocBuilder<ContentFavoriteBloc, ContentFavoriteState>(
        builder: (context, stateContentFavorite) {
          if (stateContentFavorite is ContentFavoriteDataLoaded) {
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
                    const SizedBox(height: 20),
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
                    listVideo(
                      context: context,
                      favFilms: stateContentFavorite.films,
                    )
                  ],
                ),
              ),
            );
          } else if (stateContentFavorite is ContentFavoriteError) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: const Text('Film Edukasi'),
                centerTitle: true,
              ),
              body: ErrorOccuredButton(
                onRetryPressed: () => MyApp.contentFavorite.add(InitializeContentFavoriteData()),
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
