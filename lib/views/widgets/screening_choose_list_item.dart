part of 'widgets.dart';


class ScreeningChooseListItem extends StatelessWidget {
  const ScreeningChooseListItem({
    super.key,
    required this.title,
    required this.route,
  });

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 7),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
