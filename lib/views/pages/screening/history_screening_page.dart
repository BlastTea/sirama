part of '../pages.dart';

// class HistoryScreeningPage extends StatelessWidget {
//   const HistoryScreeningPage({super.key});

class HistoryScreeningPage extends StatelessWidget {
  const HistoryScreeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SkrinningBloc, SkrinningState>(
      builder: (context, stateHistory) {
        if (stateHistory is SkrinningInitial) {
          MyApp.skrinningBloc.add(InitializeSkrinningData());
        }
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
                title: Row(
                  children: [
                    const Text('tes', style: const TextStyle(fontSize: 30)),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('tes', style: Config.textStyleHeadlineSmall),
                          ],
                        ),
                        Text(
                          'tes',
                          style: Config.textStyleBodyMedium,
                        ),
                        Text('tes', style: Config.textStyleBodyMedium),
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
                        'tes',
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
