part of '../pages.dart';

class EducationalVideoPage extends StatelessWidget {
  const EducationalVideoPage({super.key});

  static Widget listVideo({
    required BuildContext context,
    required List<VideoEdukasi> videoEdukasis,
    bool replaceCurrentPage = false,
    int? currentEducationVideo,
  }) =>
      videoEdukasis.isEmpty
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
                VideoEdukasi videoEdukasi = videoEdukasis[index];

                if (videoEdukasi.idVideoEdukasi == currentEducationVideo) return Container();

                return InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => DetailsEducationalVideoPage(
                        educationalVideo: videoEdukasi,
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
                          child: videoEdukasi.thumbnailImageData != null
                              ? Image.memory(
                                  Uint8List.fromList(videoEdukasi.thumbnailImageData!),
                                  fit: BoxFit.cover,
                                )
                              : Image.network(
                                  'https://dev-sirama.propertiideal.id/test/image not found.png',
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
                          videoEdukasi.judulVideoEdukasi ?? '?',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Admin . ${videoEdukasi.tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true)}',
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: videoEdukasis.length,
            );

  @override
  Widget build(BuildContext context) {
    if (MyApp.educationaVideoBloc.state is EducationalVideoInitial) {
      MyApp.educationaVideoBloc.add(InitializeEducationalVideoData());
    }

    return BlocBuilder<EducationalVideoBloc, EducationalVideoState>(
      builder: (context, stateEducationalVideo) {
        if (stateEducationalVideo is EducationalVideoDataLoaded) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Video Edukasi'),
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
                    videoEdukasis: stateEducationalVideo.educationalVideos,
                  )
                ],
              ),
            ),
          );
        } else if (stateEducationalVideo is EducationalVideoError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Video Edukasi'),
              centerTitle: true,
            ),
            body: ErrorOccuredButton(
              onRetryPressed: () => MyApp.educationaVideoBloc.add(InitializeEducationalVideoData()),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('Video Edukasi'),
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
