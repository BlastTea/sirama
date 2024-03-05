part of '../pages.dart';

class HistoryScreeningPage extends StatelessWidget {
  const HistoryScreeningPage({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SkrinningBloc, SkrinningState>(
      builder: (context, stateHistory) {
        if (stateHistory is SkrinningDataLoaded) {
          return _buildHistoryList(context, stateHistory);
        } else if (stateHistory is SkrinningError) {
          return _buildErrorUI(context);
        } else {
          return _buildLoadingUI(context);
        }
      },
    );
  }

  Widget _buildHistoryList(BuildContext context, SkrinningDataLoaded stateHistory) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          MyApp.skrinningBloc.add(InitializeSkrinningData());
        },
        child: ListView(
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
                          idBagSkrinUser: idBagSkrinUser!),
                    ));
                  },
                  title: Row(
                    children: [
                      Text(riwayat.jenisHasil == 'positif' ? '😁' : '😔',
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
                              riwayat.idSkrinning == 1 && riwayat.idSkrinning == 2
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
      ),
    );
  }

  Widget _buildLoadingUI(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildErrorUI(BuildContext context) {
    return Scaffold(
      body: ErrorOccuredButton(
        onRetryPressed: () {
          MyApp.skrinningBloc.add(InitializeSkrinningData());
        },
      ),
    );
  }
}
