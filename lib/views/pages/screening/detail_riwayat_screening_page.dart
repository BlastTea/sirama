part of '../pages.dart';

class DetailRiwayatSkrinningPage extends StatefulWidget {
  const DetailRiwayatSkrinningPage({super.key, required this.idBagSkrinUser});

  final int idBagSkrinUser;

  @override
  State<DetailRiwayatSkrinningPage> createState() =>
      _DetailRiwayatSkrinningPageState();
}

class _DetailRiwayatSkrinningPageState
    extends State<DetailRiwayatSkrinningPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (MyApp.skrinningBloc.state is SkrinningInitial) {
      MyApp.skrinningBloc.add(InitializeSkrinningData());
    }
    return BlocBuilder<SkrinningBloc, SkrinningState>(
      builder: (context, stateSkrinning) {
        if (stateSkrinning is SkrinningDataLoaded) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: const Text("Skrining"),
              centerTitle: true,
            ),
            body: SafeArea(
              child: ListView.builder(
                itemCount: stateSkrinning.detailriwayatskrinning.length,
                itemBuilder: (context, index) {
                  final currentDetailRiwayat =
                      stateSkrinning.detailriwayatskrinning[index];

                  final soalList = currentDetailRiwayat.soalJawab ?? [];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: ListTile(
                          title: Text(
                            'Hasil skrinning ${currentUser?.username ?? 'Guest'}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(currentDetailRiwayat.hasil!),
                        ),
                      ),
                      Text(
                        'Skor anda adalah ${currentDetailRiwayat.pointotal ?? ''}',
                        style: const TextStyle(color: Colors.black),
                      ),
                      Text(
                        currentDetailRiwayat.namaBagian ?? '',
                        style: const TextStyle(color: Colors.black),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: soalList.length,
                        itemBuilder: (context, index2) {
                          final soalJawabList = soalList[index2];
                          final soalDetail = soalJawabList.soal ?? '';
                          final jawabanDetail = soalJawabList.jawaban ?? '';
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text(
                                  '${soalJawabList.noSoal.toString()}. $soalDetail',
                                ),
                              ),
                              ColoredBox(
                                color: Colors.green,
                                child: RadioListTile(
                                  tileColor: Colors.blue,
                                  title: Text(jawabanDetail),
                                  groupValue: jawabanDetail,
                                  value: soalJawabList.poinJawaban,
                                  onChanged: (value) {},
                                ),
                              )
                            ],
                          );
                        },
                      )
                    ],
                  );
                },
              ),
            ),
          );
        } else {
          return _buildLoadingUI();
        }
      },
    );
  }

  Widget _buildLoadingUI() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Skrining"),
        centerTitle: true,
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
