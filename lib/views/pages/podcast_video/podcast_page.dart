part of '../pages.dart';

List<Map> dataPodcast = [
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

class PodcastPage extends StatelessWidget {
  const PodcastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: 20,
            ),
           const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CardTile(
                title: Text(
                    'Bagaimana sih gambaran Bullying di dunia nyata? Hmmm...'),
                button: Text(
                    'Yuk! biar Sobat RAMA ngga bosan luangkan waktu untuk menonton Film!'),
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
              child: ListView.builder(
                itemCount: dataPodcast.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    // Navigate to the detail page and pass the necessary dataPodcast
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
            )
          ],
        ),
      ),
    );
  }
}