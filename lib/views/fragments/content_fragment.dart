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
      body: GridView.count(
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
    );
  }
}
