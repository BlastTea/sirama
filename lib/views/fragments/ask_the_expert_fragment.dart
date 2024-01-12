part of 'fragments.dart';

class AskTheExpertFragment extends StatelessWidget {
  const AskTheExpertFragment({super.key});

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CardTile(
              title: const Text('1 on 1 Sessions'),
              subtitle: const Text('Let`s open up to the things that matter the most '),
              button: const Text('Chat Sekarang'),
              image: Image.asset('assets/hug.png'),
              onPressed: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const OneOnOneSessionsPage())),
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Paling sering ditanyakan',
              style: Config.textStyleHeadlineSmall,
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: 48.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(left: index == 0 ? 20.0 : 8.0, right: index == 9 ? 20.0 : 0.0),
                child: ChoiceChip(
                  label: const Text('Self Care'),
                  selected: index == 0,
                  onSelected: (value) {},
                ),
              ),
              itemCount: 10,
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Pertanyaan serupa dari Sobat RAMA lainnya',
              style: Config.textStyleHeadlineSmall,
            ),
          ),
          const SizedBox(height: 20.0),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) => ListTile(
              isThreeLine: true,
              onTap: () => debugPrint('On question pressed'),
              leading: ImageContainer.hero(
                tag: 'Profile picture $index',
                width: 48.0,
                height: 48.0,
                iconSize: 24.0,
                icon: Icons.person,
                border: const Border(),
                image: const NetworkImage('https://avatars.githubusercontent.com/u/75353116?v=4'),
                borderRadius: BorderRadius.circular(24.0),
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Cal Dingo • just now'),
              ),
              subtitle: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('Is there a therapy wich can cure crossdressing & bsdm compulsion?'),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.thumb_up_outlined),
                          iconSize: 20.0,
                        ),
                      ),
                      const Text('2'),
                      const SizedBox(width: 18.0),
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.messenger_outline),
                          iconSize: 20.0,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Transform.flip(
                            flipX: true,
                            child: const Icon(Icons.reply_outlined),
                          ),
                          iconSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ),
            itemCount: 10,
          ),
        ],
      );
}
