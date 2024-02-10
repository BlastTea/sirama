part of 'widgets.dart';

class PlayVideoFromYoutube extends StatefulWidget {
  const PlayVideoFromYoutube({
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
  State<PlayVideoFromYoutube> createState() => _PlayVideoFromYoutubeState();
}

class _PlayVideoFromYoutubeState extends State<PlayVideoFromYoutube> {
  late final PodPlayerController controller;

  get videoUrl => null;

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube('$videoUrl'),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PodVideoPlayer(controller: controller),
    );
  }
}
