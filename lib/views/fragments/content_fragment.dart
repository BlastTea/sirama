part of 'fragments.dart';

List<Map> kontenData = [
  {'title': 'Film Edukasi', 'route': '/film', 'icon': 'play'},
  {'title': 'Podcast Edukasi', 'route': '/podcast', 'icon': 'mic'},
  {'title': 'Video Edukasi', 'route': '/educational-video', 'icon': 'video'},
  {'title': 'Infografis', 'route': '/infographics', 'icon': 'image'},
];

class ContentFragment extends StatelessWidget {
  const ContentFragment({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: ListView(children: [
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CardTile(
                title: Text('Konten Edukasi'), subtitle: Text(shortLorem)),
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
                            Navigator.pushNamed(context, data['route']),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['title'],
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              _getIconForCard(data['icon']),
                            ],
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Video terbaru',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListView.builder(
              itemCount: dataPodcast.length,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) => InkWell(
                borderRadius: BorderRadius.circular(10.0),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPodcastPage(
                        videoUrl: dataPodcast[index]['link_film']!,
                        title: dataPodcast[index]['judul_film']!,
                        uploadUserId: dataPodcast[index]['creator']!,
                        totalLike: dataPodcast[index]['like']!,
                      ),
                    ),
                  );
                },
                child: Column(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          dataPodcast[index]['thumbnail']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(dataPodcast[index]['profile_url']!),
                      ),
                      title: Text(
                        dataPodcast[index]['judul_film']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${dataPodcast[index]['creator']!} . ${dataPodcast[index]['date']!}",
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      );

  Widget _getIconForCard(String? iconName) {
    if (iconName == null) {
      return const Icon(Icons.play_circle,
          color: Colors.white);
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
}
