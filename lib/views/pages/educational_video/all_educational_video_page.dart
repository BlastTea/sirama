part of '../pages.dart';

class AllEducationalVideoPage extends StatelessWidget {
  const AllEducationalVideoPage({super.key});

  static Widget listVideo({
    required BuildContext context,
    required EducationalVideoDataLoaded stateEducationalVideo,
    bool replaceCurrentPage = false,
    int? currentEducationVideo,
  }) =>
      ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          EducationalVideo educationalVideo =
              stateEducationalVideo.educationalVideos[index];

          if (educationalVideo.idVideoEdukasi == currentEducationVideo)
            return Container();

          return InkWell(
            onTap: () {
              Route route = MaterialPageRoute(
                builder: (context) => DetailsEducationalVideoPage(
                  educationalVideo: educationalVideo,
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
                    child: educationalVideo.thumbnailImageData != null
                        ? Image.memory(
                            Uint8List.fromList(
                                educationalVideo.thumbnailImageData!),
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
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(data[index]['profile_url']!),
                  ),
                  title: Text(
                    educationalVideo.judulVideoEdukasi ?? '?',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Zalorin Vexstar . ${educationalVideo.tanggalUpload?.toFormattedDate(withWeekday: true, withMonthName: true)}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: stateEducationalVideo.educationalVideos.length,
      );

  @override
  Widget build(BuildContext context) {
    if (MyApp.educationavideoBloc.state is EducationalVideoInitial) {
      MyApp.educationavideoBloc.add(InitializeEducationalVideoData());
    }

    return BlocBuilder<EducationalVideoBloc, EducationalVideoState>(
      builder: (context, stateEducationalVideo) {
        if (stateEducationalVideo is EducationalVideoDataLoaded) {
          SafeArea(
            child: ListView(
              children: [
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: CardTile(
                    title: Text(
                        'Bagaimana sih gambaran Bullying di dunia nyata? Hmmm...'),
                    button: Text(
                        'Yuk! biar Sobat RAMA ngga bosan luangkan waktu untuk menonton Film!'),
                  ),
                ),
                const SizedBox(height: 20),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: listVideo(
                    context: context,
                    stateEducationalVideo: stateEducationalVideo,
                  ),
                )
              ],
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
              onRetryPressed: () => MyApp.educationavideoBloc
                  .add(InitializeEducationalVideoData()),
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
