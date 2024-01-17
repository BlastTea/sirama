part of 'fragments.dart';

List<Map> kontenData = [
  {'title': 'Film Edukasi', 'route': '/film'},
  {'title': 'Podcast Edukasi', 'route': '/podcast'},
  {'title': 'Video Edukasi', 'route': '/educational-video'},
  {'title': 'Infographics', 'route': '/infographics'},
];

class ContentFragment extends StatelessWidget {
  const ContentFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context)
              .push(const HomeFragment() as Route<Object?>),
        ),
        title: const Text("Video Edukasi"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CardTile(title: Text('tes'), subtitle: Text(shortLorem)),
          ),
          GridView.count(
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 2,
            children: kontenData.map((data) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, data['route']);
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.play_circle),
                      const SizedBox(height: 10),
                      Text(
                        data['title'],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 20,),
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
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
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
      ),
    );
  }
}
