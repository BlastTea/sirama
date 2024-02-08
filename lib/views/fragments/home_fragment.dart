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

  List<Map<String, String>> routeListView = [
    {'title': 'ChatMe', 'route': '/chatme'},
    {'title': 'Skrining', 'route': '/screening'},
    {'title': 'Film', 'route': '/film'},
    {'title': 'Podcast', 'route': '/podcast'},
    {'title': 'Video Edukasi', 'route': '/educational-video'},
    {'title': 'Tanya Ahli', 'route': '/asktheexpert'},
  ];

  Widget navigateToPage(String route) {
    switch (route) {
      case '/chatme':
        return const ChatFragment();
      case '/screening':
        return const ScreeningPage();
      case '/film':
        return const FilmPage();
      case '/podcast':
        return const PodcastPage();
      case '/educational-video':
        return const EducationalVideoPage();
      case '/asktheexpert':
        return const AskTheExpertFragment();
      default:
        return Container();
    }
  }

  String currentDay = '';
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    initializeSharedPreferences().then((_) {
      resetValuesIfNeeded();
    });
  }

  Future<void> initializeSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  void resetValuesIfNeeded() {
    String today = DateFormat('yyyy-MM-dd').format(DateTime.now());
    if (currentDay != today) {
      setState(() {
        for (var e in checkboxHomeFragment) {
          String key = 'value${e.keys.first.substring(4)}';
          e[key] = prefs.getBool(key) ?? false;
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
                          Text(
                            'Selamat datang',
                            style: Config.textStyleHeadlineSmall
                                .copyWith(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('${currentUser?.username ?? 'Guest'} 👋',
                              style: Config.textStyleHeadlineSmall.copyWith(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipOval(
                        child: Image.asset('assets/person.png', width: 50),
                        //45:00 min
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: MyCarouselSlider()),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CardTile(
                  title: const Text('Yuk, Skrining!'),
                  subtitle: const Text(
                      'Ayo deteksi dini perilaku pencegahan bullying atau perundungan Sobat RAMA'),
                  button: const Row(
                    children: [
                      Text('Skrining'),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                  image: Image.asset(
                    'assets/card-homepage.png',
                  ),
                  imageAlignment: CardTileAlignment.bottom,
                  minImageWidth: 100.0,
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
                  children: routeListView
                      .map(
                        (e) => Padding(
                          padding: EdgeInsets.only(
                              left: e['title'] == 'ChatMe' ? 20.0 : 8.0,
                              right: e['title'] == 'Tanya Ahli' ? 20.0 : 0.0),
                          child: ActionChip(
                            label: Text(e['title']!),
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            color: MaterialStatePropertyAll(
                                Theme.of(context).colorScheme.primary),
                            labelStyle: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                            onPressed: () => NavigationHelper.to(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        navigateToPage(e['route']!))),
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
              ),
            ],
          ),
        ),
      );

  @override
  void dispose() {
    saveCheckboxValuesToSharedPreferences();
    super.dispose();
  }

  void saveCheckboxValuesToSharedPreferences() {
    for (var e in checkboxHomeFragment) {
      String key = 'value${e.keys.first.substring(4)}';
      prefs.setBool(key, e[key]);
    }
  }
}
