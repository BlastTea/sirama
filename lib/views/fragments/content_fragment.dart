part of 'fragments.dart';

List<Map<String, String>> kontenData = [
  {'title': 'Film Edukasi', 'route': '/film', 'icon': 'play'},
  {'title': 'Podcast Edukasi', 'route': '/podcast', 'icon': 'mic'},
  {'title': 'Video Edukasi', 'route': '/educational-video', 'icon': 'video'},
  {'title': 'Infografis', 'route': '/infographics', 'icon': 'image'},
];

class ContentFragment extends StatelessWidget {
  const ContentFragment({super.key});

  Widget _getIconForCard(String? iconName) {
    if (iconName == null) {
      return const Icon(
        Icons.play_circle,
        color: Colors.white,
      );
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

    return Icon(iconData, color: Colors.white, size: 25);
  }

  @override
  Widget build(BuildContext context) {
    if (MyApp.contentFavorite.state is ContentFavoriteInitial) MyApp.contentFavorite.add(InitializeContentFavoriteData());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Konten Edukasi'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
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
                          onTap: () => Navigator.pushNamed(context, data['route']!),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _getIconForCard(data['icon']!),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        data['title']!,
                                        style: const TextStyle(fontSize: 18, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Yuk, tonton!',
                                      style: Config.textStyleBodyMedium.copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
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
                    'Video Edukasi terbaru',
                    style: Config.textStyleHeadlineSmall,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            BlocBuilder<ContentFavoriteBloc, ContentFavoriteState>(
              builder: (context, stateContentFavorite) {
                if (stateContentFavorite is ContentFavoriteDataLoaded) {
                  return EducationalVideoPage.listVideo(
                    context: context,
                    favVideoEdukasis: stateContentFavorite.videoEdukasis,
                  );
                } else if (stateContentFavorite is ContentFavoriteError) {
                  return ErrorOccuredButton(
                    onRetryPressed: () => MyApp.contentFavorite.add(InitializeContentFavoriteData()),
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
