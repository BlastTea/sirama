part of '../pages.dart';

class MainScreeningPage extends StatefulWidget {
  const MainScreeningPage({super.key});

  @override
  State<MainScreeningPage> createState() => _MainScreeningPageState();
}

class _MainScreeningPageState extends State<MainScreeningPage> {
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
            ),
            body: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      const CardTile(
                        title: Text(
                          'Dengan skrining dengan skrining dengan skrining',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(shortLorem),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Penting! ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  'Bagaimana mereka merundungmu? (Beri centang pada seberapa sering kamu mengalami perundungan)?',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: stateSkrinning.detailskrinning.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              stateSkrinning.detailskrinning[index][index]
                                      .namaBagianSkrinning ??
                                  '?',
                              style: Config.textStyleTitleSmall,
                            ),
                            subtitle: ListView.builder(
                              itemCount:
                                  stateSkrinning.detailskrinning[index].length,
                              shrinkWrap: true,
                              primary: false,
                              itemBuilder: (context, indexx) {
                                return ListTile(
                                  title: Text(stateSkrinning
                                          .detailskrinning[index][indexx]
                                          .soalJawab?[0]
                                          .soal
                                          .toString() ??
                                      ' ?'),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (stateSkrinning is SkrinningError) {
          return _buildErrorUI();
        } else {
          return _buildLoadingUI();
        }
      },
    );
  }
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
