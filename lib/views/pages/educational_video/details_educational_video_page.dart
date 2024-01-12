part of '../pages.dart';

class DetailsEducationalVideoPage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    // Implement your detail page UI here
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: 
        PlayVideoFromYoutube(videoUrl: 'videoUrl', title: title, uploadUserId: uploadUserId, totalLike: totalLike),
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
