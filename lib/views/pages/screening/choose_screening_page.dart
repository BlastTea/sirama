part of '../pages.dart';

class ChooseScreeningPage extends StatelessWidget {
  const ChooseScreeningPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
          body: ListView(
        primary: true,
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text('Yuk, skrining sekarang',
                    style: TextStyle(fontSize: 20)),
                const Text('Altamis S.Kom, M.Kom.',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Stack(
                  children: [
                    Image.asset(
                      'assets/carton.png',
                      width: 250,
                      height: 250,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          style: TextStyle(fontSize: 14.0),
                          children: <TextSpan>[
                            TextSpan(text: 'Hai'),
                            TextSpan(
                                text: ' Sobat Rama ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    'ayo deteksi dini perilaku bullying atau perundungan. Beranikan mengisi, lihat hasilnya, berani berubah, Ikutin langkah selanjutnya. Penasaran? Yuk'),
                            TextSpan(
                                text: ' Sobat Rama ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'klik dan jawab pertanyaannya!'),
                          ])),
                ),
                const SizedBox(height: 20,),
                const ScreeningChooseListItem(
                  title: 'Skrining Bullying',
                  route: '/mainscreening',
                ),
                const ScreeningChooseListItem(
                  title: 'Skrining Cyberbullying',
                  route: '/mainscreening',
                ),
                const ScreeningChooseListItem(
                  title: 'Skrining Empati',
                  route: '/mainscreening',
                ),
                const ScreeningChooseListItem(
                  title: 'Skrining Efikasi Diri',
                  route: '/mainscreening',
                ),
                const ScreeningChooseListItem(
                  title: 'Skrining K. Prososial',
                  route: '/mainscreening',
                ),
              ],
            ),
          ),
        ],
      ));
}
