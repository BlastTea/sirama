part of '../pages.dart';

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

class EducationalVideoPage extends StatelessWidget {
  const EducationalVideoPage({super.key});

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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                              uploadUserId: data[index]['creator']!,
                              totalLike: data[index]['like']!,
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
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
        } else if (stateEducationalVideo is EducationalVideoInitial) {
          return const CircularProgressIndicator();
        }
        else if (stateEducationalVideo is EducationalVideoError) {
          return const Text('Error anj');
        }
        else {
          return Container();
        }
      },
    );
  }
}
