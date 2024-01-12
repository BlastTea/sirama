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
              const AskTheExpertFragment(),
              const ChatFragment(),
              const ProfileFragment(),
            ][stateHomepage.selectedIndex],
            bottomNavigationBar: MyNavigationBar(
              indicatorShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              indicatorColor: Theme.of(context).colorScheme.primary,
              destinations: List.generate(
                5,
                (index) => MyNavigationDestination(
                  icon: [
                    SvgPicture.asset('assets/svgs/Home unselected.svg', width: 30.0, height: 30.0),
                    SvgPicture.asset('assets/svgs/Clipboard unselected.svg', width: 30.0, height: 30.0),
                    const Icon(Icons.contact_support, size: 30.0),
                    SvgPicture.asset('assets/svgs/Message unselected.svg', width: 30.0, height: 30.0),
                    SvgPicture.asset('assets/svgs/User unselected.svg', width: 30.0, height: 30.0),
                  ][index],
                  selectedIcon: [
                    SvgPicture.asset('assets/svgs/Home selected.svg', width: 30.0, height: 30.0),
                    SvgPicture.asset('assets/svgs/Clipboard selected.svg', width: 30.0, height: 30.0),
                    Icon(Icons.contact_support, size: 30.0, color: Theme.of(context).colorScheme.onPrimary),
                    SvgPicture.asset('assets/svgs/Message selected.svg', width: 30.0, height: 30.0),
                    SvgPicture.asset('assets/svgs/User selected.svg', width: 30.0, height: 30.0),
                  ][index],
                  label: [
                    'Beranda',
                    'Skrining',
                    'Tanya Ahli',
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
