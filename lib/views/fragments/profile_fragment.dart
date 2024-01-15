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
              leading: const Icon(Icons.school),
              title: const Text('Sekolah'),
              onTap: () => debugPrint('sekolah pressed'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favorit'),
              onTap: () => debugPrint('Favorit pressed'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Hapus Akun'),
              onTap: () => showDeleteDialog(
                titleText: 'Hapus Akun?',
                messageText: shortLorem,
                primaryFilledButton: true,
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () => debugPrint('Logout pressed'),
            ),
          ],
        ),
      );
}
