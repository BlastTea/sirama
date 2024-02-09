part of '../pages.dart';

class HistoryScreeningPage extends StatelessWidget {
  const HistoryScreeningPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            children: [
              Column(children: [
                ScreeningListItem(
                  emot: '😕',
                  title: 'Skrining Bullying A',
                  score: 'Skor Dirahasiakan',
                  date: '16 Agustus 2023',
                  description:
                      'Sobat RAMA ${currentUser?.username} cenderung sebagai korban bullying. Belajar Yuk di Fitur Video Edukasi dan Infografis serta layanan Tanya Ahli. Semoga Membantu',
                ),
                ScreeningListItem(
                  emot: '😁',
                  title: 'Skrining K. Efikasi C',
                  score: 'Skor Anda 80',
                  date: '17 Agustus 2023',
                  description:
                      'Sobat RAMA ${currentUser?.username} mengalami cacat efikasi diri. Belajar Yuk di Fitur Video Edukasi dan Infografis serta layanan Tanya Ahli. Semoga Membantu',
                ),
              ]),
            ]),
      );
}
