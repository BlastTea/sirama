part of '../pages.dart';

class InputAskPage extends StatelessWidget {
  const InputAskPage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AskTheExpertBloc, AskTheExpertState>(
        builder: (context, stateAskTheExpert) {
          if (stateAskTheExpert is AskTheExpertDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Tanya Ahli'),
                centerTitle: true,
              ),
              body: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                children: [
                  Text(
                    'Anda bertanya kepada',
                    style: Config.textStyleTitleLarge.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'Sahana S.Pd, M.Pd.',
                    style: Config.textStyleTitleLarge,
                  ),
                  const SizedBox(height: 20.0),
                  LabeledTextField.dropdown(
                    controller: stateAskTheExpert.textControllerTopic,
                    width: MediaQuery.sizeOf(context).width - 40.0,
                    items: stateAskTheExpert.topikPertanyaans
                        .map(
                          (e) => DropdownMenuEntry(
                            value: stateAskTheExpert.topikPertanyaans.indexWhere((element) => element.namaTopik == e.namaTopik),
                            label: e.namaTopik!,
                          ),
                        )
                        .toList(),
                    labelText: 'Topik',
                    labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                    minVerticalPadding: 4.0,
                    onSelected: (value) => MyApp.askTheExpertBloc.add(SetSelectedInputTopikPertanyaan(index: value)),
                  ),
                  const SizedBox(height: 20.0),
                  LabeledTextField(
                    controller: stateAskTheExpert.textControllerQuestion,
                    labelText: 'Pertanyaan',
                    labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                    minVerticalPadding: 4.0,
                    textInputAction: TextInputAction.newline,
                    constraints: const BoxConstraints.tightFor(height: kMaximumDescriptionHeight),
                    maxLines: null,
                    maxLength: 500,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    buildCounter: counter,
                    onEditingComplete: () => MyApp.askTheExpertBloc.add(SendAskTheExpertPressed()),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
              bottomNavigationBar: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0 + MediaQuery.viewInsetsOf(context).bottom),
                child: MyFilledButton(
                  onPressed: () => MyApp.askTheExpertBloc.add(SendAskTheExpertPressed()),
                  labelText: 'Kirim',
                ),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: const Text('Tanya Ahli'),
              centerTitle: true,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
