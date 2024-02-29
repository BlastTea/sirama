part of '../pages.dart';

class ChooseScreeningPage extends StatelessWidget {
  const ChooseScreeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MyApp.skrinningBloc.state is SkrinningInitial) {
      MyApp.skrinningBloc.add(InitializeSkrinningData());
    }
    return BlocBuilder<SkrinningBloc, SkrinningState>(
      builder: (context, stateSkrinning) {
        if (stateSkrinning is SkrinningDataLoaded) {
          return _buildScreeningList(context, stateSkrinning);
        } else if (stateSkrinning is SkrinningError) {
          return Scaffold(
            body: ErrorOccuredButton(
              onRetryPressed: () {
                MyApp.skrinningBloc.add(InitializeSkrinningData());
              },
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _buildScreeningList(
      BuildContext context, SkrinningDataLoaded stateSkrinning) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text('Yuk, skrining sekarang',
                  style: TextStyle(fontSize: 20)),
              Text('${currentUser?.username ?? 'Guest'} 🤩',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
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
              _buildScreeningTiles(context, stateSkrinning),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildScreeningTiles(
      BuildContext context, SkrinningDataLoaded stateSkrinning) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      itemBuilder: (context, index) {
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
                    stateSkrinning.skrinnings[index].jenisSkrinning!,
                    style: Config.textStyleBodyMedium
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  const Icon(Icons.chevron_right),
                ],
              ),
            ),
          ),
          onTap: () {
            final idSkrinning = stateSkrinning.skrinnings[index].idSkrinning;
            MyApp.skrinningBloc.add(GetDetailSkrinning(
                skrinning: stateSkrinning.skrinnings[index]));
            NavigationHelper.to(MaterialPageRoute(
              builder: (context) => MainScreeningPage(
                idSkrinning: idSkrinning,
                idBagianSkrinning:
                    stateSkrinning.detailskrinning[index].idBagianSkrinning,
              ),
            ));
          },
        );
      },
      itemCount: stateSkrinning.skrinnings.length,
    );
  }
}
