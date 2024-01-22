part of '../pages.dart';

class MainScreeningPage extends StatelessWidget {
  const MainScreeningPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Skrining"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                const CardTile(
                  title:
                      Text('Dengan skrining dengan skrining dengan skrining'),
                  subtitle: Text(shortLorem),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        style: TextStyle(fontSize: 14.0),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Penting! ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  'Bagaimana mereka merundungmu? (Beri centang pada seberapa sering kamu mengalami perundungan)?'),
                        ])),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'Bagian A',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const ScreeningListAnswer(titleQuestion: '1. Memanggil saya dengan julukan'),
                const ScreeningListAnswer(titleQuestion: '2. Mengolok-olok saya'),
                const ScreeningListAnswer(titleQuestion: '3. Mengancam menyakiti saya'),
                const ScreeningListAnswer(titleQuestion: '4. Mempermainkan saya'),
              ],
            ),
          ),
        ],
      ));
}
