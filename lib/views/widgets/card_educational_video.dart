part of 'widgets.dart';

class CardEducationalVideo extends StatelessWidget {
  const CardEducationalVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Theme.of(context).colorScheme.primary,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: SizedBox(
            width: 300,
            height: 200,
            child: Text(
              'Bagaimana sih gambaran Bullying di dunia nyata? Hmmm...',
              style: Config.textStyleHeadlineMedium.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
