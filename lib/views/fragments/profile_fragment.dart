part of 'fragments.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          children: [
            const SizedBox(height: 20.0),
            ListTile(
              leading: ImageContainer.hero(
                tag: 'Profile picture',
                width: 48.0,
                height: 48.0,
                iconSize: 24.0,
                icon: Icons.person,
                border: const Border(),
                image: const NetworkImage('https://avatars.githubusercontent.com/u/75353116?v=4'),
                borderRadius: BorderRadius.circular(24.0),
              ),
              title: const Text('Zalorin Vexstar'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const EditProfilePage())),
            ),
            const SizedBox(height: 32.0),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favorit'),
              onTap: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const FavouritePage())),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Hapus Akun'),
              onTap: () => showDeleteDialog(
                titleText: 'Hapus Akun?',
                messageText: 'Semua data dan pengaturan Anda akan dihapus secara permanen. Ini termasuk profil, konten yang Anda simpan, dan semua interaksi dalam aplikasi. Proses ini tidak dapat dibatalkan.',
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () async {
                await ApiHelper.signOut();
                NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const WelcomePage()));
                await Future.delayed(kDurationMedium3);
                MyApp.homepageBloc.add(SetHomepageSelectedIndex(index: 0));
              },
            ),
          ],
        ),
      );
}
