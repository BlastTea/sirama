part of '../../pages.dart';

class FavPodcast extends StatelessWidget {
  final int? userId;

  const FavPodcast({super.key, this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FavPodcastBloc, FavPodcastState>(
        builder: (context, state) {
          if (state is FavPodcastInitial) {
            BlocProvider.of<FavPodcastBloc>(context)
                .add(GetFavPodcastByUserId(userId ?? 0));
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FavPodcastLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FavPodcastLoaded) {
            return ListView.builder(
              itemCount: state.podcastList.length,
              itemBuilder: (context, index) {
                final podcast = state.podcastList[index];
                return ListTile(
                  title: Text(podcast.judulPodcast ?? ''),
                  subtitle: Text(podcast.linkPodcast ?? ''),
                );
              },
            );
          } else if (state is FavPodcastError) {
            return const Center(
              child: Text('Failed to load favourite podcasts'),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
