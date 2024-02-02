part of '../pages.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Favorit'),
            centerTitle: true,
            bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              tabs: ['Film Edukasi', 'Podcast Edukasi', 'Video Edukasi', 'Infografis'].map((e) => Tab(text: e)).toList(),
            ),
          ),
          body: TabBarView(
            children: ['Film Edukasi', 'Podcast Edukasi', 'Video Edukasi', 'Infografis'].map((e) => Center(child: Text(e))).toList(),
          ),
        ),
      );
}
