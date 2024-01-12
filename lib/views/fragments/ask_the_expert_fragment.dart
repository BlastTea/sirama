part of 'fragments.dart';

class AskTheExpertFragment extends StatelessWidget {
  const AskTheExpertFragment({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Tanya Ahli'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CardTile(
                title: const Text('1 on 1 Sessions'),
                subtitle: const Text('Let`s open up to the things that matter the most '),
                button: const Text('Chat Sekarang'),
                image: Image.asset('assets/hug.png'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
}
