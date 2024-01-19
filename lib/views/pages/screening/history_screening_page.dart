part of '../pages.dart';

class HistoryScreeningPage extends StatelessWidget {
  const HistoryScreeningPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: const [
              Column(children: [
                ScreeningListItem(
                  title: 'Skrining Bullying A',
                  score: 'Skor anda 10',
                  date: '16 Agustus 2023',
                  description:
                      'Sobat RAMA Emi Wuri Wuryaningsih cenderung sebagai korban bullying. Belajar Yuk di Fitur Video Edukasi dan Infografis serta layanan Tanya Ahli. Semoga Membantu',
                ),
              ]),
              Divider(
                height: 2,
                color: Colors.black12,
              ),
            ]),
      );
}
