part of 'pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: const Text('Edit Profile'),
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              expandedHeight: 200.0,
            ),
            SliverToBoxAdapter(
              child: Align(
                child: ImageContainer.hero(
                  tag: 'Profile picture',
                  width: 150.0,
                  height: 150.0,
                  iconSize: 75.0,
                  icon: Icons.person,
                  border: const Border(),
                  image: const NetworkImage('https://avatars.githubusercontent.com/u/75353116?v=4'),
                  borderRadius: BorderRadius.circular(75.0),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverToBoxAdapter(
                child: LabeledTextField(
                  labelText: 'Username',
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverToBoxAdapter(
                child: LabeledTextField(
                  labelText: 'Nama',
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverToBoxAdapter(
                child: LabeledTextField(
                  labelText: 'Tanggal Lahir',
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverToBoxAdapter(
                child: LabeledTextField(
                  labelText: 'Jenis Kelamin',
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverToBoxAdapter(
                child: MyFilledButton(onPressed: () {}, labelText: 'Ubah'),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: kBottomFabPadding)),
          ],
        ),
      );
}
