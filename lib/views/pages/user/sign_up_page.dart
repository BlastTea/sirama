part of '../pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthenticationBloc, AuthenticationState>(
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
                    ...switch (stateAuthentication.role) {
                      UserRole.remaja => [
                          const SizedBox(height: 20.0),
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
                      UserRole.orangTua => [],
                      UserRole.tenagaAhli => [],
                      UserRole.kaderKesehatan => [],
                      UserRole.guru => [],
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
