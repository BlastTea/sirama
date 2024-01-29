part of 'fragments.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  List<Map<String, dynamic>> checkboxHomeFragment = [
    {'text1': 'Berpamitan kepada orang tua', 'value1': false},
    {'text2': 'Berdoa sebelum belajar', 'value2': false},
    {'text3': 'Menyapa kepada teman', 'value3': false},
  ];


  String currentDay = '';

  @override
  void initState() {
    super.initState();
    resetValuesIfNeeded();
  }

  void resetValuesIfNeeded() {
    String today = DateFormat('yyyy-MM-dd').format(DateTime.now());
    if (currentDay != today) {
      setState(() {
        for (var e in checkboxHomeFragment) {
          e['value${e.keys.first.substring(4)}'] = false;
        }
        currentDay = today;
      });
    }
  }


  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome Home',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${currentUser?.username ?? 'Anonymous'} 👋',
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipOval(
                        child: Image.asset('assets/ugm.png', width: 50),

                        //45:00 min
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            '“It is better to conquer yourself than to win a thousand battles yourself than to win a thousand battles yourself than to win a thousand battles”',
                            style: Config.textStyleBodyLarge.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/quote.png',
                            height: 50,
                            width: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CardTile(
                  title: const Text('Yuk, Tanya Ahli!'),
                  subtitle: const Text(shortLorem),
                  image: Image.asset('assets/card-homepage.png', height: 50.0),
                  imageAlignment: CardTileAlignment.bottom,
                  minImageWidth: 134.0,
                  onPressed: () => NavigationHelper.to(MaterialPageRoute(
                      builder: (context) => const ScreeningPage())),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Menu',
                      style: Config.textStyleHeadlineSmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 48.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    'ChatMe',
                    'Skrining',
                    'Infografis',
                    'Film',
                    'Podcast',
                    'Video Edukasi',
                    'Tanya Ahli',
                  ]
                      .map(
                        (e) => Padding(
                          padding: EdgeInsets.only(
                              left: e == 'ChatMe' ? 20.0 : 8.0,
                              right: e == 'Tanya Ahli' ? 20.0 : 0.0),
                          child: ActionChip(
                            label: Text(e),
                            color: MaterialStatePropertyAll(
                                Theme.of(context).colorScheme.primary),
                            labelStyle: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                            onPressed: () => debugPrint('on $e pressed'),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Tandai tiga kebaikanmu hari ini',
                      style: Config.textStyleHeadlineSmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ...checkboxHomeFragment.map(
                (Map<String, dynamic> e) => Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                  child: CheckboxListTile(
                    value: e['value${e.keys.first.substring(4)}'] as bool,
                    title: Text(
                      e.values.first,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    tileColor: Theme.of(context).colorScheme.primary,
                    checkColor: Theme.of(context).colorScheme.onPrimary,
                    side: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimary,
                        width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onChanged: (value) {
                      setState(() {
                        e['value${e.keys.first.substring(4)}'] = value;
                      });
                    },
                  ),
                ),
                // ...[
                //   'Berpamitan kepada orang tua',
                //   'Berdoa sebelum belajar',
                //   'Menyapa kepada teman'
                // ].map(
                //   (e) => Padding(
                //     padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                //     child: CheckboxListTile(
                //       value: e == 'Berpamitan kepada orang tua',
                //       title: Text(
                //         e,
                //         style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                //             color: Theme.of(context).colorScheme.onPrimary),
                //       ),
                //       tileColor: Theme.of(context).colorScheme.primary,
                //       fillColor: e == 'Berdoa sebelum belajar'
                //           ? MaterialStatePropertyAll(
                //               Theme.of(context).colorScheme.onPrimary)
                //           : null,
                //       checkColor: Theme.of(context).colorScheme.primary,
                //       side: BorderSide(
                //           color: Theme.of(context).colorScheme.onPrimary,
                //           width: 2),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(kShapeMedium),
                //       ),
                //       onChanged: (value) {
                //         setState(() {
                //           e == 'Berdoa sebelum belajar'
                //               ? e = 'Berpamitan kepada orang tua'
                //               : e = 'Berdoa sebelum belajar';
                //         });
                //       },
                //     ),
                //   ),
              ),
            ],
          ),
        ),
      );
}
