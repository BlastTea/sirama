part of 'fragments.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

List<Map<String, String>> siramaIcon = [
  {'icon': 'skrining-menu-icon', 'title': 'Screening', 'route': '/screening'},
  {'icon': 'infografis-menu-icon', 'title': 'Infografis', 'route': '/infographics'},
  {'icon': 'film-menu-icon', 'title': 'Film', 'route': '/film'},
  {'icon': 'podcast-menu-icon', 'title': 'Podcast', 'route': '/podcast'},
  {'icon': 'video-edukasi-menu-icon', 'title': 'Video Edukasi', 'route': '/educational-video'},
  {'icon': 'tanya-ahli-menu-icon', 'title': 'Tanya Ahli', 'route': '/asktheexpert'},
];

class _HomeFragmentState extends State<HomeFragment> {
  

  void navigateToPage(String route) {
    switch (route) {
      case '/chatme':
        return MyApp.homepageBloc.add(SetHomepageSelectedIndex(index: 3));
      case '/screening':
        NavigationHelper.toNamed('/screening');
      case '/film':
        NavigationHelper.toNamed('/film');
      case '/podcast':
        NavigationHelper.toNamed('/podcast');
      case '/educational-video':
        NavigationHelper.toNamed('/educational-video');
      case '/asktheexpert':
        return MyApp.homepageBloc.add(SetHomepageSelectedIndex(index: 2));
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
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Menu',
                      style: Config.textStyleHeadlineSmall.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(                  
                    height: 241,
                    child: GridView.count(
                      primary: false,
                      crossAxisCount: 3,
                      children: [
                        ...siramaIcon.map((e) => Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 3),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: IconButton(
                                      onPressed: () => navigateToPage(e['route']!),
                                      icon: SvgPicture.asset(
                                        'assets/icons/${e['icon']!}.svg',
                                      )),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  e['title']!,
                                  style: Config.textStyleBodyLarge
                                      .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ))
                      ],
                    )),
              ),

              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
              //   child: CardTile(
              //     title: const Text('Yuk, Skrining!'),
              //     subtitle: const Text(
              //         'Ayo deteksi dini perilaku pencegahan bullying atau perundungan Sobat RAMA'),
              //     button: const Row(
              //       children: [
              //         Text('Skrining'),
              //         SizedBox(width: 10),
              //         Icon(
              //           Icons.arrow_forward,
              //           color: Colors.white,
              //         )
              //       ],
              //     ),
              //     image: Image.asset(
              //       'assets/card-homepage.png',
              //     ),
              //     imageAlignment: CardTileAlignment.bottom,
              //     minImageWidth: 100.0,
              //     onPressed: () => NavigationHelper.to(MaterialPageRoute(
              //         builder: (context) => const ScreeningPage())),
              //   ),
              // ),

              // SizedBox(
              //   height: 48.0,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: routeListView
              //         .map(
              //           (e) => Padding(
              //             padding: EdgeInsets.only(
              //                 left: e['title'] == 'ChatMe' ? 20.0 : 8.0,
              //                 right: e['title'] == 'Tanya Ahli' ? 20.0 : 0.0),
              //             child: ActionChip(
              //               label: Text(e['title']!),
              //               side: BorderSide(
              //                 color: Theme.of(context).colorScheme.onPrimary,
              //               ),
              //               color: MaterialStatePropertyAll(
              //                   Theme.of(context).colorScheme.primary),
              //               labelStyle: Theme.of(context)
              //                   .textTheme
              //                   .labelLarge
              //                   ?.copyWith(
              //                     color:
              //                         Theme.of(context).colorScheme.onPrimary,
              //                   ),
              //               onPressed: () => navigateToPage(e['route']!),
              //             ),
              //           ),
              //         )
              //         .toList(),
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Tandai tiga kebaikanmu hari ini 👇',
                      style: Config.textStyleHeadlineSmall.copyWith(fontSize: 18,),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ...checkboxHomeFragment.map(
                (Map<String, dynamic> e) => Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 15.0),
                  child: CheckboxListTile(
                    value: e['value${e.keys.first.substring(4)}'] as bool,
                    title: Text(
                      e.values.first,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: e['value${e.keys.first.substring(4)}']
                                ? Colors.white
                                : Colors.black,
                          ),
                    ),
                    tileColor: e['value${e.keys.first.substring(4)}']
                        ? Theme.of(context).colorScheme.primary
                        : Colors.white,
                    checkColor: Theme.of(context).colorScheme.primary,
                    activeColor: Colors.white,
                    side: BorderSide(
                      color: e['value${e.keys.first.substring(4)}']
                          ? Colors.white
                          : Colors.black,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 5,
                        color: e['value${e.keys.first.substring(4)}']
                            ? const Color(0xFFBCD2F8)
                            : Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
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
