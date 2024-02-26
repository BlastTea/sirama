part of '../pages.dart';

class HistoryScreeningPage extends StatelessWidget {
  const HistoryScreeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MyApp.skrinningBloc.state is SkrinningInitial) {
      MyApp.skrinningBloc.add(InitializeSkrinningData());
    }
    return BlocBuilder<SkrinningBloc, SkrinningState>(
      builder: (context, stateHistory) {
        if (stateHistory is SkrinningDataLoaded) {
          return _buildHistoryList(stateHistory);
        } else if (stateHistory is SkrinningError) {
          return _buildErrorUI();
        } else {
          return _buildLoadingUI();
        }
      },
    );
  }

  Widget _buildHistoryList(SkrinningDataLoaded stateHistory) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        children: [
          Column(
            children: stateHistory.riwayatskrinning.map((riwayat) {
              return ListTile(
                onTap: () {
                  final idBagSkrinUser = riwayat.idBagSkrinUser;
                  MyApp.skrinningBloc.add(
                      GetDetailRiwayatSkrinning(riwayatskrinning: riwayat));
                  NavigationHelper.to(MaterialPageRoute(
                    builder: (context) => DetailRiwayatSkrinningPage(
                        idBagSkrinUser: idBagSkrinUser),
                  ));
                },
                title: Row(
                  children: [
                    Text(riwayat.jenisHasil == 'positif' ? '🥳' : '😔',
                        style: const TextStyle(fontSize: 30)),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(riwayat.jenisSkrinning!,
                                style: Config.textStyleHeadlineSmall),
                          ],
                        ),
                        Text(
                          riwayat.tglPengisian!.toFormattedDate(
                              withWeekday: true, withMonthName: true),
                          style: Config.textStyleBodyMedium,
                        ),
                        Text(
                            riwayat.jenisHasil == 'Skrinning Bullying' &&
                                    riwayat.jenisHasil ==
                                        'Skrinning Cyberbullying'
                                ? 'Skor anda dirahasiakan'
                                : 'Skor anda adalah ${riwayat.poinJawaban.toString()}',
                            style: Config.textStyleBodyMedium),
                      ],
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(49, 5, 0, 0),
                      child: Text(
                        riwayat.hasil ?? 'Tidak ada keterangan',
                        style: Config.textStyleBodyMedium,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      height: 2,
                      color: Colors.black12,
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingUI() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildErrorUI() {
    return const Scaffold(
      body: Center(
        child: Text('Failed to load screening history. Please try again.'),
      ),
    );
  }
}
