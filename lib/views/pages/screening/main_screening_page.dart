part of '../pages.dart';

class MainScreeningPage extends StatefulWidget {
  const MainScreeningPage({super.key, this.idSkrinning});

  final int? idSkrinning;

  @override
  State<MainScreeningPage> createState() => _MainScreeningPageState();
}

class _MainScreeningPageState extends State<MainScreeningPage> {
  Map<int, int> selectedAnswers = {};
  int currentPartIndex = 0;

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
          if (kDebugMode) {
            print(selectedAnswers);
          }
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: const Text(
                "Skrining",
              ),
              centerTitle: true,
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
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          final detailSkrinning =
                              stateSkrinning.detailskrinning[currentPartIndex];
                          final soalList = detailSkrinning.soalJawab ?? [];
                          // selectedAnswers = List.filled(
                          //     stateSkrinning.detailskrinning.length, null);
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  detailSkrinning.namaBagianSkrinning ?? '?',
                                  style: Config.textStyleTitleSmall,
                                ),
                              ),
                              ListView.builder(
                                itemCount: soalList.length,
                                shrinkWrap: true,
                                primary: false,
                                itemBuilder: (context, index) {
                                  final soal = soalList[index].soal ?? '';
                                  final jawabanList =
                                      soalList[index].jawaban ?? [];
                                  final questionNumber = index + 1;
                                  // selectedAnswers =
                                  //     List.filled(soalList.length, null);
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        title: Text('$questionNumber. $soal'),
                                      ),
                                      ListView.builder(
                                        itemCount: jawabanList.length,
                                        shrinkWrap: true,
                                        primary: false,
                                        itemBuilder: (context, idx) {
                                          final jawaban = jawabanList[idx];
                                          return RadioListTile(
                                            title: Text(jawaban.jawaban ?? ''),
                                            value: jawaban.idJawabanSkrinning,
                                            groupValue:
                                                selectedAnswers[questionNumber],
                                            onChanged: (value) {
                                              setState(() {
                                                selectedAnswers[
                                                    questionNumber] = value!;
                                              });
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      ),
                      MyFilledButton(
                        onPressed: () {
                          setState(() {
                            if (currentPartIndex <
                                stateSkrinning.detailskrinning.length - 1) {
                              currentPartIndex++; // Pindah ke bagian skrinning berikutnya
                            } else {
                              // Bagian terakhir selesai, tampilkan pesan selesai
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  title: const Text('Skrinning Selesai'),
                                  content: const Text(
                                      'Anda telah menyelesaikan proses skrinning.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          });
                        },
                        labelText: currentPartIndex <
                                stateSkrinning.detailskrinning.length - 1
                            ? 'Lanjutkan'
                            : 'Selesai',
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
