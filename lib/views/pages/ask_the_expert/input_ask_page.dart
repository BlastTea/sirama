part of '../pages.dart';

class InputAskPage extends StatelessWidget {
  const InputAskPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
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
            LabeledTextField(
              labelText: 'Topik',
              labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
              minVerticalPadding: 4.0,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 20.0),
            LabeledTextField(
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
            ),
            const SizedBox(height: 20.0),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0 + MediaQuery.viewInsetsOf(context).bottom),
          child: MyFilledButton(
            onPressed: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const ChatAskTheExpertPage())),
            labelText: 'Kirim',
          ),
        ),
      );
}
