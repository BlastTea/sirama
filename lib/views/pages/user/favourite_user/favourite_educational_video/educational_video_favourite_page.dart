part of '../../../pages.dart';

class FavEducationalVideo extends StatelessWidget {
  const FavEducationalVideo({super.key});
  static Widget listVideo({
    required BuildContext context,
    required FavVideoEdukasiDataLoaded stateFavVideoEdukasi,
    bool replaceCurrentPage = false,
    int? currentVideoEdukasi,
  }) =>
      ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          FavVideoEdukasi favvideoedukasi = stateFavVideoEdukasi.favvideoedukasis[index];

          if (favvideoedukasi.idFavVideoEdukasi == currentVideoEdukasi) return Container();

          return InkWell(
            onTap: () {
              Route route = MaterialPageRoute(
                builder: (context) => DetailFavEducationalVideoPage(
                  favvideoedukasi: favvideoedukasi,
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
                    child: favvideoedukasi.thumbnailImageData != null
                        ? Image.memory(
                            Uint8List.fromList(favvideoedukasi.thumbnailImageData!),
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
                    favvideoedukasi.educationalVideo!.judulVideoEdukasi ?? '?',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Admin . ${stateFavVideoEdukasi.favvideoedukasis[index].educationalVideo!.tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true)}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: stateFavVideoEdukasi.favvideoedukasis.length,
      );

  @override
  Widget build(BuildContext context) {
    if (MyApp.favVideoEdukasiBloc.state is FavVideoEdukasiInitial) {
      MyApp.favVideoEdukasiBloc.add(InitializeFavVideoEdukasiData());
    }
    return BlocBuilder<FavVideoEdukasiBloc, FavVideoEdukasiState>(
      builder: (context, stateFavVideoEdukasi) {
        if (stateFavVideoEdukasi is FavVideoEdukasiDataLoaded) {
          return Scaffold(
              body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: listVideo(
              context: context,
              stateFavVideoEdukasi: stateFavVideoEdukasi,
            ),
          ));
        } else if (stateFavVideoEdukasi is FavVideoEdukasiError) {
          return Scaffold(
            body: ErrorOccuredButton(
              onRetryPressed: () =>
                  MyApp.favVideoEdukasiBloc.add(InitializeFavVideoEdukasiData()),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
