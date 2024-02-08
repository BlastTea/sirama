part of '../pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, stateAuthentication) {
        stateAuthentication as AuthenticationDataLoaded;

        return Scaffold(
          body: SafeArea(
            child: AutofillGroup(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                children: [
                  const SizedBox(height: 20.0),
                  Text(
                    'Yuk, buat akun baru',
                    textAlign: TextAlign.center,
                    style: Config.textStyleHeadlineMedium,
                  ),
                  const SizedBox(height: 64.0),
                  LabeledTextField(
                    controller: stateAuthentication.textControllerUsernameSignUp,
                    labelText: 'Username',
                    decoration: InputDecoration(
                      hintText: 'Masukkan Username Anda',
                      errorText: stateAuthentication.invalidSignUpTypes.contains(InvalidType.usernameIsStillEmpty) ? InvalidType.usernameIsStillEmpty.text : null,
                    ),
                    autofillHints: const [AutofillHints.username],
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 20.0),
                  LabeledTextField(
                    controller: stateAuthentication.textControllerEmailSignUp,
                    labelText: 'Email',
                    decoration: InputDecoration(
                      hintText: 'Masukkan Email Anda',
                      errorText: stateAuthentication.invalidSignUpTypes.contains(InvalidType.emailIsStillEmpty) ? InvalidType.emailIsStillEmpty.text : null,
                    ),
                    autofillHints: const [AutofillHints.email],
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 20.0),
                  LabeledTextField.password(
                    controller: stateAuthentication.textControllerPasswordSignUp,
                    labelText: 'Password',
                    decoration: InputDecoration(
                      hintText: 'Masukkan Password Anda',
                      errorText: stateAuthentication.invalidSignUpTypes.contains(InvalidType.passwordIsStillEmpty) ? InvalidType.passwordIsStillEmpty.text : null,
                    ),
                    autofillHints: const [AutofillHints.password],
                    textInputAction: TextInputAction.next,
                    onSubmitted: (value) => stateAuthentication.focusNodeNameSignUp.requestFocus(),
                  ),
                  const SizedBox(height: 20.0),
                  const Divider(),
                  const SizedBox(height: 20.0),
                  LabeledTextField(
                    focusNode: stateAuthentication.focusNodeNameSignUp,
                    controller: stateAuthentication.textControllerNameSignUp,
                    labelText: 'Nama',
                    decoration: InputDecoration(
                      hintText: 'Masukkan Nama Anda',
                      errorText: stateAuthentication.invalidSignUpTypes.contains(InvalidType.nameIsStillEmpty) ? InvalidType.nameIsStillEmpty.text : null,
                    ),
                    autofillHints: const [AutofillHints.name],
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 20.0),
                  LabeledTextField(
                    controller: stateAuthentication.textControllerPhoneNumberSignUp,
                    labelText: 'Nomor Handphone',
                    decoration: InputDecoration(
                        hintText: 'Masukkan Nomor Handphone Anda',
                        errorText: stateAuthentication.invalidSignUpTypes.contains(InvalidType.phoneNumberIsStillEmpty)
                            ? InvalidType.phoneNumberIsStillEmpty.text
                            : stateAuthentication.invalidSignUpTypes.contains(InvalidType.phoneNumberIsNotValid)
                                ? InvalidType.phoneNumberIsNotValid.text
                                : null),
                    autofillHints: const [AutofillHints.telephoneNumber],
                    keyboardType: TextInputType.number,
                    inputFormatters: [textFormatterDigitsOnly],
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 20.0),
                  ...switch (stateAuthentication.role) {
                    UserRole.remaja => [
                        LabeledTextField.date(
                          value: stateAuthentication.dateOfBirth,
                          firstDate: DateTime(1970),
                          lastDate: DateTime.now(),
                          labelText: 'Tanggal Lahir',
                          decoration: const InputDecoration(
                            hintText: 'Masukkan Tanggal Lahir Anda',
                          ),
                          readOnly: true,
                          onDateChanged: (value) => MyApp.authenticationBloc.add(SetSignUpDateOfBirth(value: value!)),
                        ),
                        const SizedBox(height: 20.0),
                        LabeledTextField.dropdown(
                          controller: TextEditingController(text: stateAuthentication.gender.text),
                          width: MediaQuery.sizeOf(context).width - 56.0,
                          items: Gender.values.map((e) => DropdownMenuEntry(value: e, label: e.text)).toList(),
                          labelText: 'Jenis Kelamin',
                          decoration: const InputDecoration(
                            hintText: 'Masukkan Jenis Kelamin Anda',
                          ),
                          readOnly: true,
                          onSelected: (value) => MyApp.authenticationBloc.add(SetSignUpGender(value: value)),
                        ),
                        const SizedBox(height: 20.0),
                        LabeledTextField(
                          controller: stateAuthentication.textControllerSchoolSignUp,
                          labelText: 'Sekolah',
                          decoration: InputDecoration(
                            hintText: 'Masukkan Sekolah Anda',
                            errorText: stateAuthentication.invalidSignUpTypes.contains(InvalidType.schoolIsStillEmpty) ? InvalidType.schoolIsStillEmpty.text : null,
                          ),
                          onEditingComplete: () => MyApp.authenticationBloc.add(SignUpPressed()),
                        ),
                      ],
                    UserRole.orangTua => [
                        LabeledTextField.dropdown(
                          controller: TextEditingController(text: stateAuthentication.childSchoolLevel.text),
                          labelText: 'Tingkat Sekolah Anak',
                          width: MediaQuery.sizeOf(context).width - 56.0,
                          items: SchoolLevel.values.map((e) => DropdownMenuEntry(value: e, label: e.text)).toList(),
                          decoration: const InputDecoration(
                            hintText: 'Masukkan Tingkat Sekolah Anak Anda',
                          ),
                          onSelected: (value) => MyApp.authenticationBloc.add(SetSignupChildSchoolLevel(value: value)),
                        ),
                      ],
                    UserRole.tenagaAhli => [
                        LabeledTextField.dropdown(
                          controller: TextEditingController(text: stateAuthentication.expertsType.text),
                          labelText: 'Jenis',
                          width: MediaQuery.sizeOf(context).width - 56.0,
                          items: ExpertsType.values.map((e) => DropdownMenuEntry(value: e, label: e.text)).toList(),
                          decoration: const InputDecoration(
                            hintText: 'Masukkan Jenis Tenaga Ahli',
                          ),
                          onSelected: (value) => MyApp.authenticationBloc.add(SetSignUpExpertsType(value: value)),
                        ),
                        const SizedBox(height: 20.0),
                        LabeledTextField(
                          controller: stateAuthentication.textControllerDescriptionSignUp,
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
                            errorText: stateAuthentication.invalidSignUpTypes.contains(InvalidType.descriptionIsStillEmpty) ? InvalidType.descriptionIsStillEmpty.text : null,
                          ),
                        ),
                      ],
                    UserRole.kaderKesehatan => [
                        LabeledTextField(
                          controller: stateAuthentication.textControllerAgeSignUp,
                          labelText: 'Usia',
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'Masukkan Usia Anda',
                            errorText: stateAuthentication.invalidSignUpTypes.contains(InvalidType.ageIsStillEmpty) ? InvalidType.ageIsStillEmpty.text : null,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        LabeledTextField(
                          controller: stateAuthentication.textControllerBuiltAreaSignUp,
                          labelText: 'Wilayah Binaan',
                          decoration: InputDecoration(
                            hintText: 'Masukkan Wilayah Binaan Anda',
                            errorText: stateAuthentication.invalidSignUpTypes.contains(InvalidType.builtAreaIsStillEmpty) ? InvalidType.builtAreaIsStillEmpty.text : null,
                          ),
                        ),
                      ],
                    _ => [],
                  },
                  const SizedBox(height: 32.0),
                  MyFilledButton(
                    onPressed: () => MyApp.authenticationBloc.add(SignUpPressed()),
                    labelText: 'Daftar',
                    buttonStyle: FilledButton.styleFrom(
                      textStyle: Config.textStyleHeadlineSmall.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.viewInsetsOf(context).bottom > 0.0 ? 32.0 : 0.0),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun?',
                  style: Config.textStyleTitleSmall.copyWith(
                    color: Config.greyColor,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    NavigationHelper.back();
                    NavigationHelper.back();
                  },
                  child: Text(
                    'Sign In',
                    style: Config.textStyleTitleSmall,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
