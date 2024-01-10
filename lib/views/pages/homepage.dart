part of 'pages.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Obx(() => [
              const HomeFragment(),
              const ScreeningFragment(),
              ChatMeFragment(),
              const ProfileFragment(),
            ][selectedIndex.value]),
        bottomNavigationBar: Obx(
          () => MyNavigationBar(
            indicatorShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            destinations: List.generate(
              4,
              (index) => MyNavigationDestination(
                icon: Image.asset(
                  [
                    'assets/icons/Home unselected.png',
                    'assets/icons/Clipboard unselected.png',
                    'assets/icons/Message unselected.png',
                    'assets/icons/User unselected.png',
                  ][index],
                  width: 30.0,
                  height: 30.0,
                ),
                selectedIcon: Image.asset(
                  [
                    'assets/icons/Home selected.png',
                    'assets/icons/Clipboard selected.png',
                    'assets/icons/Message selected.png',
                    'assets/icons/User selected.png',
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
            selectedIndex: selectedIndex.value,
            onDestinationSelected: (value) => selectedIndex.value = value,
          ),
        ),
      );
}
