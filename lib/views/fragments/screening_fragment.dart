part of 'fragments.dart';

List<Map> data = [
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
  },
  {
    'id_film': '3',
    'judul_film': 'Seberapa penting kesehatan mental untuk kita?',
    'link_film': 'https://www.youtube.com/watch?v=MvSkn9svGGw',
    'upload_user_id': 'Altamis',
    'thumbnail': 'https://picsum.photos/250?image=9',
    'profile_url': 'https://picsum.photos/250?image=9',
    'title': 'Video Title 3',
    'creator': 'Creator 3',
    'date': '2024-01-13',
  },
];

class ScreeningFragment extends StatelessWidget {
  const ScreeningFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                color: Colors.blue,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('Card tapped.');
                  },
                  child: const SizedBox(
                    height: 200,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          Text(
                            'Bagaimana sih gambaran Bullying di dunia nyata? Hmmm...',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Yuk! biar Sobat RAMA ngga bosan luangkan waktu untuk menonton Film!',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                itemCount: data.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    // Navigate to the detail page and pass the necessary data
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsEducationalVideoPage(
                          videoUrl: data[index]['link_film']!,
                          title: data[index]['judul_film']!,
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
                            data[index]['thumbnail']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(data[index]['profile_url']!),
                        ),
                        title: Text(
                          data[index]['judul_film']!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "${data[index]['creator']!} . ${data[index]['date']!}",
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
