part of 'widgets.dart';

class ScreeningListItem extends StatelessWidget {
  const ScreeningListItem({super.key, 
    required this.title,
    required this.score,
    required this.date,
    required this.description,
  });

  final String title;
  final String score;
  final String date;
  final String description;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(score),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(date),
          Text(description),
        ],
      ),
    );
  }
}
