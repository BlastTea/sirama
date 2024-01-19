part of 'widgets.dart';

// List<Map> routeDataScreening = [
//   {'title': 'Film Edukasi', 'route': '/film'},
//   {'title': 'Podcast Edukasi', 'route': '/podcast'},
//   {'title': 'Video Edukasi', 'route': '/educational-video'},
//   {'title': 'Infographics', 'route': '/infographics'},
// ];

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
        // margin: const EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
