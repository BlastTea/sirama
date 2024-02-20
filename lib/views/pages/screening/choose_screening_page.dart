part of '../pages.dart';

class ChooseScreeningPage extends StatelessWidget {
  const ChooseScreeningPage({super.key});

  static Widget listSkrinning({
    required BuildContext context,
    required List<Skrinning> skrinnings,
    int? idSkrinning,
  }) =>
      skrinnings.isEmpty
          ? Center(
              child: Text(
                'Tidak ada data',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              primary: false,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              itemBuilder: (context, index) {return ListTile(
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
                          skrinnings[index].jenisSkrinning!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 10,
                          ),
                        ),
                        const Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/mainscreening');
                },
              );
              });

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
                Text('${currentUser?.username ?? 'Guest'} 🤩',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
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
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(text: 'Hai'),
                            TextSpan(
                                text: ' Sobat Rama ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    'ayo deteksi dini perilaku bullying. Beranikan mengisi, lihat hasilnya, berani berubah, Ikutin langkah selanjutnya. Penasaran? Yuk'),
                            TextSpan(
                                text: ' Sobat Rama ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'klik dan jawab pertanyaannya!'),
                          ])),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ScreeningChooseListItem(),
              ],
            ),
          ),
        ],
      ));
}
