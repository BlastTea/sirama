part of '../pages.dart';

class DetailRiwayatSkrinningPage extends StatefulWidget {
  const DetailRiwayatSkrinningPage({super.key, this.idBagSkrinUser});

  final int? idBagSkrinUser;

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

  String choice = 'one';

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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  itemCount: stateSkrinning.detailriwayatskrinning.length,
                  itemBuilder: (context, index) {
                    final currentDetailRiwayat =
                        stateSkrinning.detailriwayatskrinning[index];
                    final soalList = currentDetailRiwayat.soalJawab;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardTile(
                          title: Text(
                            'Hasil skrinning ${currentUser?.username ?? 'Guest'}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(currentDetailRiwayat.hasil!),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Skor anda adalah ${currentDetailRiwayat.pointotal ?? ''}',
                          style: Config.textStyleHeadlineSmall
                              .copyWith(fontSize: 20),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          currentDetailRiwayat.namaBagian ?? '',
                          style: Config.textStyleTitleSmall,
                        ),
                        const SizedBox(height: 20),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: soalList!.length,
                          itemBuilder: (context, index2) {
                            final noSoalDetail = soalList[index2].noSoal;
                            final soalDetail = soalList[index2].soal;
                            final jawabanDetail = soalList[index2].jawaban;
                            final poinJawabanDetail =
                                soalList[index2].poinJawaban;
                            return SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    title: Text(
                                      '$noSoalDetail. $soalDetail',
                                      style: Config.textStyleHeadlineSmall
                                          .copyWith(fontSize: 16),
                                    ),
                                  ),
                                  RadioListTile(
                                    title: Text(
                                      jawabanDetail!,
                                      style: Config.textStyleHeadlineSmall
                                          .copyWith(fontSize: 16),
                                    ),
                                    subtitle: Text(
                                        'Perolehan poin anda $poinJawabanDetail', style: Config.textStyleBodyMedium.copyWith(fontSize: 14),),
                                    groupValue: choice,
                                    value: 'one',
                                    onChanged: (value) {
                                      setState(() {
                                        choice = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  },
                ),
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
