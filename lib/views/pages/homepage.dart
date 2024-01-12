part of 'pages.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<HomepageBloc, HomepageState>(
        builder: (context, stateHomepage) {
          stateHomepage as HomepageDataLoaded;

          return Scaffold(
            body: [
              const HomeFragment(),
              const ScreeningFragment(),
              const ChatFragment(),
              const ProfileFragment(),
            ][stateHomepage.selectedIndex],
            bottomNavigationBar: MyNavigationBar(
              indicatorShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              indicatorColor: Theme.of(context).colorScheme.primary,
              destinations: List.generate(
                4,
                (index) => MyNavigationDestination(
                  icon: SvgPicture.asset(
                    [
                      'assets/svgs/Home unselected.svg',
                      'assets/svgs/Clipboard unselected.svg',
                      'assets/svgs/Message unselected.svg',
                      'assets/svgs/User unselected.svg',
                    ][index],
                    width: 30.0,
                    height: 30.0,
                  ),
                  selectedIcon: SvgPicture.asset(
                    [
                      'assets/svgs/Home selected.svg',
                      'assets/svgs/Clipboard selected.svg',
                      'assets/svgs/Message selected.svg',
                      'assets/svgs/User selected.svg',
                    ][index],
                    width: 30.0,
                    height: 30.0,
                  ),
                  label: [
                    'Beranda',
                    'Skrining',
                    'Chat',
                    'Profil',
                  ][index],
                ),
              ),
              selectedIndex: stateHomepage.selectedIndex,
              onDestinationSelected: (index) => MyApp.homepageBloc.add(SetHomepageSelectedIndex(index: index)),
            ),
          );
        },
      );
}
