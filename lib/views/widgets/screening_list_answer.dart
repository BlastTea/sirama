part of 'widgets.dart';

class ScreeningListAnswer extends StatefulWidget {
  const ScreeningListAnswer({
    super.key,
    this.value,
    required this.titleQuestion,
  });

  final int? value;
  final String titleQuestion;

  @override
  State<ScreeningListAnswer> createState() => _ScreeningListAnswerState();
}

enum SingingCharacter { zero, one, two, three, four, five }

class _ScreeningListAnswerState extends State<ScreeningListAnswer> {
  SingingCharacter? _character;

  @override
  void initState() {
    super.initState();
    // Initialize _character with the value from the parent widget
    _character = SingingCharacter.values[widget.value ?? 0];
  }

  @override
  Widget build(BuildContext context) => Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
            child: Text(
              widget.titleQuestion,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: -1),
          title: const Text('Tidak pernah terjadi'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.zero,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: -1),
          title: const Text('Jarang Terjadi'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.one,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: -1),
          title: const Text('Kadang Terjadi'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.two,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: -1),
          title: const Text('Sering Terjadi'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.three,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: -1),
          title: const Text('Sering Terjadi'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.four,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: -1),
          title: const Text('Selalu Terjadi'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.five,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        const Divider(
                height: 2,
                color: Colors.black12,
              ),
      ]);
}
