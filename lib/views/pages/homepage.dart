part of 'pages.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Obx(() => [
              const HomeFragment(),
              const ScreeningFragment(),
              const ChatMeFragment(),
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
                icon: Icon([Icons.home, Icons.paste, Icons.message, Icons.person][index]),
                label: 'Test',
              ),
            ),
            selectedIndex: selectedIndex.value,
            onDestinationSelected: (value) => selectedIndex.value = value,
          ),
        ),
      );
}
