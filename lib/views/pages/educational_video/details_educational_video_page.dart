part of '../pages.dart';

class DetailsEducationalVideoPage extends StatefulWidget {
  const DetailsEducationalVideoPage({
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
  State<DetailsEducationalVideoPage> createState() => _DetailsEducationalVideoPageState();
}

class _DetailsEducationalVideoPageState extends State<DetailsEducationalVideoPage> {
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: PodVideoPlayer(
          controller: _podPlayerController,
        ),
        // Column(
        //   children: [
        //     Text('Video URL: $videoUrl'),
        //     Text('Author: $uploadUserId'),
        //     Text('Total Like: $totalLike'),
        //   ],
        // ),
      ),
    );
  }
}
