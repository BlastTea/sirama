part of 'pages.dart';

enum SingingCharacter { remaja, tenagaahli, guru, kaderkesehatan, orangtua }

SingingCharacter? _character = SingingCharacter.remaja;

class SignUpRolePage extends StatefulWidget {
  const SignUpRolePage({super.key});

  @override
  State<SignUpRolePage> createState() => _SignUpRolePageState();
}

class _SignUpRolePageState extends State<SignUpRolePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: AutofillGroup(
                child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            RadioListTile<SingingCharacter>(
              secondary: const Icon(Icons.logout),
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text('Remaja'),
              value: SingingCharacter.remaja,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<SingingCharacter>(
              secondary: const Icon(Icons.logout),
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text('Tenaga Ahli'),
              value: SingingCharacter.tenagaahli,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<SingingCharacter>(
              secondary: const Icon(Icons.logout),
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text('Guru'),
              value: SingingCharacter.guru,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<SingingCharacter>(
              secondary: const Icon(Icons.logout),
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text('Kader Kesehatan'),
              value: SingingCharacter.kaderkesehatan,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<SingingCharacter>(
              secondary: const Icon(Icons.logout),
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text('Orang Tua'),
              value: SingingCharacter.orangtua,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ],
        ))),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20),
          child: MyFilledButton(
            onPressed: () => NavigationHelper.to(
                MaterialPageRoute(builder: (context) => const SignUpPage())),
            iconAssetName: 'assets/icons/Monotone arrow right.png',
            labelText: 'Lanjutkan pendaftaran',
          ),
        ),
      );
}
