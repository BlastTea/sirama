part of '../widgets.dart';

class InfographicsListItem extends StatelessWidget {
  const InfographicsListItem({
    super.key,
    required this.thumbnail,
    required this.title,
    required this.user,
    required this.tanggalUpload,
  });

  final Widget thumbnail;
  final String title;
  final String user;
  final String tanggalUpload;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                  const Text(
                    'Diupload oleh Admin',
                    style: TextStyle(fontSize: 12.0),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
                  Text(
                    tanggalUpload,
                    style: const TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
