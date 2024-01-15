part of '../pages.dart';

List<Map> dataDummyPodcast = [
  {
    'id_film': '1',
    'judul_film': 'Seberapa penting kesehatan mental untuk kita?',
    'link_film': 'https://www.youtube.com/watch?v=MvSkn9svGGw',
    'upload_user_id': 'Altamis',
    'thumbnail': 'https://picsum.photos/250?image=9',
    'profile_url': 'https://picsum.photos/250?image=9',
    'title': 'Video Title 1',
    'creator': 'Creator 1',
    'date': '2024-01-11',
    'like': 1231,
  },
  {
    'id_film': '2',
    'judul_film': 'Apa itu kesehatan mental?',
    'link_film': 'https://www.youtube.com/watch?v=xDUy5dmhHcM',
    'upload_user_id': 'Altamis',
    'thumbnail': 'https://picsum.photos/250?image=9',
    'profile_url': 'https://picsum.photos/250?image=9',
    'title': 'Video Title 2',
    'creator': 'Creator 2',
    'date': '2024-01-12',
    'like': 1231,
  },
  {
    'id_film': '3',
    'judul_film': 'Seberapa penting kesehatan mental untuk kita?',
    'link_film':
        'https://www.youtube.com/watch?v=cq34RWXegM8&list=PLjxrf2q8roU0WrDTm4tUB430Mja7dQEVP&index=2',
    'upload_user_id': 'Altamis',
    'thumbnail': 'https://picsum.photos/250?image=9',
    'profile_url': 'https://picsum.photos/250?image=9',
    'title': 'Video Title 3',
    'creator': 'Creator 3',
    'date': '2024-01-13',
    'like': 1231,
  },
];

class DetailsPodcastPage extends StatefulWidget {
  const DetailsPodcastPage({
    super.key,
    required this.videoUrl,
    required this.title,
    required this.uploadUserId,
    required this.totalLike,
  });

  final String videoUrl;
  final String title;
  final String uploadUserId;
  final int totalLike;

  @override
  State<DetailsPodcastPage> createState() =>
      DetailsPodcastPageState();
}

class DetailsPodcastPageState
    extends State<DetailsPodcastPage> {
  late final PodPlayerController _podPlayerController;

  @override
  void initState() {
    super.initState();
    _podPlayerController = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(widget.videoUrl),
    )..initialise();
  }

  @override
  void dispose() {
    _podPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Implement your detail page UI here
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Video Edukasi"),
          centerTitle: true,
        ),
        body: SafeArea(
            child: ListView(shrinkWrap: true, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: PodVideoPlayer(controller: _podPlayerController),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                title: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Title'),
                ),
                subtitle: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                      ),
                      const Text('1231'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  'Video lainnya',
                  style: Config.textStyleHeadlineSmall,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ListView.builder(
                itemCount: dataDummyPodcast.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    // Navigate to the detail page and pass the necessary dataDummyPodcast
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPodcastPage(
                          videoUrl: dataDummyPodcast[index]['link_film']!,
                          title: dataDummyPodcast[index]['judul_film']!,
                          uploadUserId: dataDummyPodcast[index]['creator']!,
                          totalLike: dataDummyPodcast[index]['like']!,
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
                            dataDummyPodcast[index]['thumbnail']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(dataDummyPodcast[index]['profile_url']!),
                        ),
                        title: Text(
                          dataDummyPodcast[index]['judul_film']!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "${dataDummyPodcast[index]['creator']!} . ${dataDummyPodcast[index]['date']!}",
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
        ])));
  }
}
