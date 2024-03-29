part of '../pages.dart';

class MainScreeningPage extends StatefulWidget {
  const MainScreeningPage({
    super.key,
    this.idSkrinning,
    this.idBagianSkrinning,
  });

  final int? idSkrinning;
  final int? idBagianSkrinning;

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
          final currentPart = stateSkrinning.detailskrinning[currentPartIndex];
          final sortedSelectedAnswers = List.generate(
            currentPart.soalJawab!.length,
            (index) => selectedAnswers[index] ?? 0,
          );
          if (kDebugMode) {
            print(sortedSelectedAnswers);
            print(currentPart);
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
                      ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          final detailSkrinning =
                              stateSkrinning.detailskrinning[currentPartIndex];
                          final soalList = detailSkrinning.soalJawab ?? [];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: const TextStyle(
                                      fontSize: 14.0, color: Colors.black),
                                  children: <TextSpan>[
                                    const TextSpan(
                                      text: 'Penting! ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: stateSkrinning
                                          .skrinnings[index].deskripsiSkrinning,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
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
                                            groupValue: selectedAnswers[
                                                questionNumber - 1],
                                            onChanged: (value) {
                                              setState(() {
                                                selectedAnswers[questionNumber -
                                                    1] = value!;
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
                          if (currentPartIndex <
                              stateSkrinning.detailskrinning.length - 1) {
                            MyApp.skrinningBloc.add(SubmitJawabanSkrinning(
                              detailskrinning: stateSkrinning
                                  .detailskrinning[currentPartIndex],
                              selectedAnswers: List.generate(
                                stateSkrinning.detailskrinning[currentPartIndex]
                                    .soalJawab!.length,
                                (index) => selectedAnswers[index] ?? 0,
                              ),
                            ));
                            setState(() {
                              void showAlertDialog() {
                                showDialog(
                                  context: context,
                                  builder: (_) {
                                    return AlertDialog(
                                      title: const Text('Data berhasil disimpan'),
                                      actions: [
                                        ElevatedButton(
                                          child: const Text('Lanjutkan Skrinning'),
                                          onPressed: () =>
                                              Navigator.pop(context, 'Lanjutkan Skrinning'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                              showAlertDialog();
                              currentPartIndex++;
                              selectedAnswers.clear();
                            });
                          } else {
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
                                    child: const Text('Oke'),
                                  ),
                                ],
                              ),
                            ).then((_) {
                              MyApp.skrinningBloc.add(SubmitJawabanSkrinning(
                                detailskrinning: stateSkrinning
                                    .detailskrinning[currentPartIndex],
                                selectedAnswers: List.generate(
                                  stateSkrinning
                                      .detailskrinning[currentPartIndex]
                                      .soalJawab!
                                      .length,
                                  (index) => selectedAnswers[index] ?? 0,
                                ),
                              ));
                            });
                          }
                        },
                        labelText: currentPartIndex <
                                stateSkrinning.detailskrinning.length - 1
                            ? 'Kirim Jawaban'
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
    return Scaffold(
      body: ErrorOccuredButton(
        onRetryPressed: () {
          MyApp.skrinningBloc.add(InitializeSkrinningData());
        },
      ),
    );
  }
}
