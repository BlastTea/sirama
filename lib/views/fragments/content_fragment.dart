part of 'fragments.dart';

List<Map<String, String>> kontenData = [
  {'title': 'Film Edukasi', 'route': '/film', 'icon': 'play'},
  {'title': 'Podcast Edukasi', 'route': '/podcast', 'icon': 'mic'},
  {'title': 'Video Edukasi', 'route': '/educational-video', 'icon': 'video'},
  {'title': 'Infografis', 'route': '/infographics', 'icon': 'image'},
];

class ContentFragment extends StatelessWidget {
  const ContentFragment({super.key});

  static Widget _getIconForCard(String? iconName) {
    if (iconName == null) {
      return const Icon(Icons.play_circle, color: Colors.white);
    }

    IconData iconData;
    switch (iconName) {
      case 'play':
        iconData = Icons.play_circle;
        break;
      case 'mic':
        iconData = Icons.mic;
        break;
      case 'video':
        iconData = Icons.video_library;
        break;
      case 'image':
        iconData = Icons.image;
        break;

      default:
        iconData = Icons.play_circle;
    }

    return Icon(iconData, color: Colors.white);
  }

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

          if (educationalVideo.idVideoEdukasi == currentEducationVideo) {
            return Container();
          }

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
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Konten Edukasi'),
              centerTitle: true,
            ),
            body: SafeArea(
              child: ListView(children: [
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CardTile(
                    title: Text('Konten Edukasi'),
                    subtitle: Text(shortLorem),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Semua konten',
                        style: Config.textStyleHeadlineSmall,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                GridView.count(
                  primary: false,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  children: kontenData
                      .map((data) => Card(
                            color: Config.colorScheme.primary,
                            margin: const EdgeInsets.all(10),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(kShapeMedium),
                              onTap: () =>
                                  Navigator.pushNamed(context, data['route']!),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data['title']!,
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    _getIconForCard(data['icon']!),
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Video terbaru',
                        style: Config.textStyleHeadlineSmall,
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
                ),
              ]),
            ),
          );
        } else if (stateEducationalVideo is EducationalVideoError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('Konten Edukasi'),
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
            title: const Text('Konten Edukasi'),
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
