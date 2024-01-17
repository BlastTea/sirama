part of 'pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: AutofillGroup(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text('Edit Profile'),
                centerTitle: true,
                pinned: true,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                backgroundColor: Theme.of(context).colorScheme.primary,
                flexibleSpace: FlexibleSpaceBar(
                  background: Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 165.0,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            height: 200.0 - 145.0,
                            color: Theme.of(context).colorScheme.background,
                          ),
                        ),
                        Align(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 90.0),
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
                        Positioned(
                          bottom: 0.0,
                          right: MediaQuery.sizeOf(context).width / 2 - 56.0 - 32.0,
                          child: IconButton.filled(
                            onPressed: () => ImageContainer.handleChangeImage(
                              showDelete: true,
                              sheetTitleText: 'Ganti foto profil',
                            ),
                            icon: const Icon(Icons.camera_alt),
                            iconSize: 28.0,
                            style: const ButtonStyle(
                              fixedSize: MaterialStatePropertyAll(Size(56.0, 56.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                expandedHeight: 200.0,
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverToBoxAdapter(
                  child: LabeledTextField(
                    controller: TextEditingController(text: 'Zalorin Vexstar'),
                    labelText: 'Username',
                    labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                    minVerticalPadding: 4.0,
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.username],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverToBoxAdapter(
                  child: LabeledTextField(
                    controller: TextEditingController(text: 'Zalorin Vexstar'),
                    labelText: 'Nama Lengkap',
                    labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                    minVerticalPadding: 4.0,
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.name],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverToBoxAdapter(
                  child: LabeledTextField.date(
                    value: DateTime(1970, 1, 1),
                    labelText: 'Tanggal Lahir',
                    labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                    minVerticalPadding: 4.0,
                    firstDate: DateTime(1970, 1, 1),
                    lastDate: DateTime.now(),
                    readOnly: true,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverToBoxAdapter(
                  child: LabeledTextField.dropdown(
                    controller: TextEditingController(text: 'Laki-Laki'),
                    width: MediaQuery.sizeOf(context).width - 40.0,
                    labelText: 'Jenis Kelamin',
                    labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                    minVerticalPadding: 4.0,
                    items: ['Laki-Laki', 'Perempuan'].map((e) => DropdownMenuEntry(value: e, label: e)).toList(),
                    readOnly: true,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverToBoxAdapter(
                  child: LabeledTextField.dropdown(
                    controller: TextEditingController(text: 'Bapak'),
                    width: MediaQuery.sizeOf(context).width - 40.0,
                    labelText: 'Orang Tua',
                    labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                    minVerticalPadding: 4.0,
                    items: ['Bapak', 'Ibu'].map((e) => DropdownMenuEntry(value: e, label: e)).toList(),
                    readOnly: true,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverToBoxAdapter(
                  child: LabeledTextField(
                    controller: TextEditingController(text: 'Philips'),
                    labelText: 'Nama Orang Tua',
                    labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                    minVerticalPadding: 4.0,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverToBoxAdapter(
                  child: LabeledTextField.dropdown(
                    controller: TextEditingController(text: '3'),
                    width: MediaQuery.sizeOf(context).width - 40.0,
                    labelText: 'Anak SMP',
                    labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                    minVerticalPadding: 4.0,
                    items: ['1', '2', '3'].map((e) => DropdownMenuEntry(value: e, label: e)).toList(),
                    readOnly: true,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverToBoxAdapter(
                  child: LabeledTextField(
                    controller: TextEditingController(text: 'SMP Negeri'),
                    labelText: 'Nama Sekolah',
                    labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                    minVerticalPadding: 4.0,
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.name],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 40.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverToBoxAdapter(
                  child: MyFilledButton(onPressed: () {}, labelText: 'Ubah'),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            ],
          ),
        ),
      );
}
