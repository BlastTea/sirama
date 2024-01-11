part of '../pages.dart';

class DetailsEducationalVideoPage extends StatelessWidget {
  const DetailsEducationalVideoPage({
    Key? key,
    required this.videoUrl,
    required this.title,
  }) : super(key: key);

  final String videoUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    // Implement your detail page UI here
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Video URL: $videoUrl'),
      ),
    );
  }
}
