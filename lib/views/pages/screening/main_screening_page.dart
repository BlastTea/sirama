part of '../pages.dart';

class MainScreeningPage extends StatefulWidget {
  const MainScreeningPage({super.key, this.idSkrinning});

  final int? idSkrinning;

  @override
  State<MainScreeningPage> createState() => _MainScreeningPageState();
}

class _MainScreeningPageState extends State<MainScreeningPage> {
  List<List<int>> _selectedJawaban = [];

  @override
  void initState() {
    super.initState();
    if (MyApp.skrinningBloc.state is SkrinningDataLoaded) {
      final stateSkrinning = MyApp.skrinningBloc.state as SkrinningDataLoaded;
      _initializeSelectedJawaban(stateSkrinning);
    }
  }

  void _initializeSelectedJawaban(SkrinningDataLoaded stateSkrinning) {
    final numberOfQuestions = stateSkrinning.detailskrinning.length;
    _selectedJawaban = List.generate(numberOfQuestions, (_) => []);
  }

  @override
  Widget build(BuildContext context) {
    if (MyApp.skrinningBloc.state is SkrinningInitial) {
      MyApp.skrinningBloc.add(InitializeSkrinningData());
    }
    return BlocBuilder<SkrinningBloc, SkrinningState>(
      builder: (context, stateSkrinning) {
        if (stateSkrinning is SkrinningDataLoaded) {
          _initializeSelectedJawaban(stateSkrinning);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: const Text("Skrining",),
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
                        itemCount: stateSkrinning.detailskrinning.length,
                        itemBuilder: (context, index) {
                          final detailSkrinning =
                              stateSkrinning.detailskrinning[index];
                          final soalList = detailSkrinning.soalJawab ?? [];

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
                                itemBuilder: (context, indexx) {
                                  final soal = soalList[indexx].soal ?? '';
                                  final jawabanList =
                                      soalList[indexx].jawaban ?? [];
                                  final questionNumber = indexx + 1;
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        title: Text('$questionNumber. $soal'),
                                      ),
                                      ...jawabanList.map((jawaban) {
                                        final isSelected =
                                            _selectedJawaban[index].contains(
                                                jawaban.idJawabanSkrinning);
                                        return RadioListTile(
                                          title: Text(jawaban.jawaban ?? ''),
                                          value: jawaban.poinJawaban,
                                          groupValue: _selectedJawaban[index],
                                          onChanged: (value) {
                                            setState(() {
                                              if (isSelected) {
                                                _selectedJawaban[index]
                                                    .remove(value);
                                              } else {
                                                _selectedJawaban[index]
                                                    .add(value as int);
                                              }
                                            });
                                          },
                                        );
                                      }).toList(),
                                    ],
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      ),
                      MyFilledButton(onPressed: () {}, labelText: 'Submit')
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
