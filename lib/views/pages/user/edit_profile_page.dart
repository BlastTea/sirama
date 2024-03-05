part of '../pages.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  void initState() {
    super.initState();
    MyApp.profileBloc.add(InitializeProfileData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, stateProfile) {
        stateProfile as ProfileDataLoaded;

        return Scaffold(
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
                            height: 150.0 + MediaQuery.viewPaddingOf(context).top,
                            color: Theme.of(context).colorScheme.secondaryContainer,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.infinity,
                              height: 200.0 - 150.0 + MediaQuery.viewPaddingOf(context).top,
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
                                iconSize: 150.0,
                                icon: Icons.account_circle_outlined,
                                border: const Border(),
                                image: stateProfile.currentUser?.userDetail?.fotoProfileData != null ? MemoryImage(Uint8List.fromList(stateProfile.currentUser!.userDetail!.fotoProfileData!)) : const AssetImage('assets/user.png') as ImageProvider,
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
                      controller: stateProfile.textControllerUsername,
                      labelText: 'Username',
                      decoration: InputDecoration(
                        hintText: 'Masukkan Username Anda',
                        errorText: stateProfile.invalidTypes.contains(InvalidType.usernameIsStillEmpty) ? InvalidType.usernameIsStillEmpty.text : null,
                      ),
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
                      controller: stateProfile.textControllerEmail,
                      labelText: 'Email',
                      decoration: InputDecoration(
                        hintText: 'Masukkan Email Anda',
                        errorText: stateProfile.invalidTypes.contains(InvalidType.emailIsStillEmpty) ? InvalidType.emailIsStillEmpty.text : null,
                      ),
                      labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                      minVerticalPadding: 4.0,
                      textInputAction: TextInputAction.next,
                      autofillHints: const [AutofillHints.email],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                const SliverToBoxAdapter(child: Divider()),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  sliver: SliverToBoxAdapter(
                    child: LabeledTextField(
                      controller: stateProfile.textControllerName,
                      labelText: 'Nama',
                      decoration: InputDecoration(
                        hintText: 'Masukkan Nama Anda',
                        errorText: stateProfile.invalidTypes.contains(InvalidType.nameIsStillEmpty) ? InvalidType.nameIsStillEmpty.text : null,
                      ),
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
                    child: LabeledTextField(
                      controller: stateProfile.textControllerPhoneNumber,
                      labelText: 'Nomor Handphone',
                      decoration: InputDecoration(
                        hintText: 'Masukkan Nomor Handphone Anda',
                        errorText: stateProfile.invalidTypes.contains(InvalidType.phoneNumberIsStillEmpty)
                            ? InvalidType.phoneNumberIsStillEmpty.text
                            : stateProfile.invalidTypes.contains(InvalidType.phoneNumberIsNotValid)
                                ? InvalidType.phoneNumberIsNotValid.text
                                : null,
                      ),
                      labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                      minVerticalPadding: 4.0,
                      keyboardType: TextInputType.number,
                      inputFormatters: [textFormatterDigitsOnly],
                      textInputAction: TextInputAction.next,
                      autofillHints: const [AutofillHints.telephoneNumber],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                ...switch (stateProfile.currentUser?.role) {
                  UserRole.remaja => [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        sliver: SliverToBoxAdapter(
                          child: LabeledTextField.date(
                            value: stateProfile.currentUser?.userDetail?.mapOrNull(remaja: (value) => value.tglLahir),
                            labelText: 'Tanggal Lahir',
                            decoration: const InputDecoration(
                              hintText: 'Masukkan Tanggal Lahir Anda',
                            ),
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
                            controller: TextEditingController(text: stateProfile.currentUser?.userDetail?.mapOrNull(remaja: (value) => value.jenisKelamin?.text ?? Gender.values.first.text)),
                            width: MediaQuery.sizeOf(context).width - 40.0,
                            labelText: 'Jenis Kelamin',
                            decoration: const InputDecoration(
                              hintText: 'Masukkan Jenis Kelamin Anda',
                            ),
                            labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                            minVerticalPadding: 4.0,
                            items: Gender.values.map((e) => DropdownMenuEntry(value: e, label: e.text)).toList(),
                            readOnly: true,
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        sliver: SliverToBoxAdapter(
                          child: LabeledTextField(
                            controller: stateProfile.textControllerSchool,
                            labelText: 'Sekolah',
                            decoration: InputDecoration(
                              hintText: 'Masukkan Sekolah Anda',
                              errorText: stateProfile.invalidTypes.contains(InvalidType.schoolIsStillEmpty) ? InvalidType.schoolIsStillEmpty.text : null,
                            ),
                            labelStyle: Config.textStyleBodyLarge.copyWith(fontWeight: FontWeight.bold),
                            minVerticalPadding: 4.0,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ),
                    ],
                  UserRole.orangTua => [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        sliver: SliverToBoxAdapter(
                          child: LabeledTextField.dropdown(
                            controller: TextEditingController(text: stateProfile.currentUser?.userDetail?.mapOrNull(orangTua: (value) => value.tingkatSekolahAnak?.text)),
                            labelText: 'Tingkat Sekolah Anak',
                            width: MediaQuery.sizeOf(context).width - 40.0,
                            minVerticalPadding: 4.0,
                            items: SchoolLevel.values.map((e) => DropdownMenuEntry(value: e, label: e.text)).toList(),
                            decoration: const InputDecoration(
                              hintText: 'Masukkan Tingkat Sekolah Anak Anda',
                            ),
                            onSelected: (value) => MyApp.authenticationBloc.add(SetSignupChildSchoolLevel(value: value)),
                          ),
                        ),
                      ),
                    ],
                  UserRole.tenagaAhli => [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        sliver: SliverToBoxAdapter(
                          child: LabeledTextField.dropdown(
                            controller: TextEditingController(text: stateProfile.currentUser?.userDetail?.mapOrNull(tenagaAhli: (value) => value.jenisAhli?.text)),
                            labelText: 'Jenis',
                            width: MediaQuery.sizeOf(context).width - 40.0,
                            minVerticalPadding: 4.0,
                            items: ExpertsType.values.map((e) => DropdownMenuEntry(value: e, label: e.text)).toList(),
                            decoration: const InputDecoration(
                              hintText: 'Masukkan Jenis Tenaga Ahli',
                            ),
                            onSelected: (value) => MyApp.authenticationBloc.add(SetSignUpExpertsType(value: value)),
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        sliver: SliverToBoxAdapter(
                          child: LabeledTextField(
                            controller: stateProfile.textControllerDescription,
                            labelText: 'Deskripsi',
                            maxLength: 255,
                            buildCounter: counter,
                            maxLines: null,
                            expands: true,
                            minVerticalPadding: 4.0,
                            textInputAction: TextInputAction.newline,
                            textAlignVertical: TextAlignVertical.top,
                            constraints: const BoxConstraints.tightFor(height: kMaximumDescriptionHeight),
                            decoration: InputDecoration(
                              hintText: 'Masukkan Deskripsi Anda',
                              errorText: stateProfile.invalidTypes.contains(InvalidType.descriptionIsStillEmpty) ? InvalidType.descriptionIsStillEmpty.text : null,
                            ),
                          ),
                        ),
                      ),
                    ],
                  UserRole.kaderKesehatan => [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        sliver: SliverToBoxAdapter(
                          child: LabeledTextField(
                            controller: stateProfile.textControllerAge,
                            labelText: 'Usia',
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            minVerticalPadding: 4.0,
                            decoration: InputDecoration(
                              hintText: 'Masukkan Usia Anda',
                              errorText: stateProfile.invalidTypes.contains(InvalidType.ageIsStillEmpty) ? InvalidType.ageIsStillEmpty.text : null,
                            ),
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        sliver: SliverToBoxAdapter(
                          child: LabeledTextField(
                            controller: stateProfile.textControllerBuiltArea,
                            labelText: 'Wilayah Binaan',
                            decoration: InputDecoration(
                              hintText: 'Masukkan Wilayah Binaan Anda',
                              errorText: stateProfile.invalidTypes.contains(InvalidType.builtAreaIsStillEmpty) ? InvalidType.builtAreaIsStillEmpty.text : null,
                            ),
                          ),
                        ),
                      ),
                    ],
                  _ => [],
                },
                const SliverToBoxAdapter(child: SizedBox(height: 40.0)),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  sliver: SliverToBoxAdapter(
                    child: MyFilledButton(onPressed: () {}, labelText: 'Simpan'),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              ],
            ),
          ),
        );
      },
    );
  }
}
