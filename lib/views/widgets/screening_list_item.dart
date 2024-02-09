part of 'widgets.dart';

class ScreeningListItem extends StatelessWidget {
  const ScreeningListItem({
    super.key,
    required this.title,
    required this.score,
    required this.date,
    required this.description,
    required this.emot,
  });

  final String title;
  final String score;
  final String date;
  final String description;
  final String emot;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(emot, style: const TextStyle(fontSize: 30)),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: Config.textStyleHeadlineSmall),
                ],
              ),
              Text(score, style: Config.textStyleBodyMedium,),
              Text(date, style: Config.textStyleBodyMedium),
            ],
          ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(49, 5, 0, 0),
            child: Text(description, style: Config.textStyleBodyMedium,),
          ),
          const SizedBox(height: 10,),
          const Divider(
                height: 2,
                color: Colors.black12,
              ),
        ],
      ),
    );
  }
}
