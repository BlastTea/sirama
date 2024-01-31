part of 'pages.dart';

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
                      decoration: const InputDecoration(
                        hintText: 'Masukkan Username Anda',
                        errorText: 'Error Bang',
                      ),
                      autofillHints: const [AutofillHints.name],
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 20.0),
                    LabeledTextField(
                      controller: stateAuthentication.textControllerEmailSignUp,
                      labelText: 'Email',
                      decoration: const InputDecoration(
                        hintText: 'Masukkan Email Anda',
                      ),
                      autofillHints: const [AutofillHints.email],
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 20.0),
                    LabeledTextField.password(
                      controller: stateAuthentication.textControllerPasswordSignUp,
                      labelText: 'Password',
                      decoration: const InputDecoration(
                        hintText: 'Masukkan Password Anda',
                      ),
                      autofillHints: const [AutofillHints.newPassword],
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
                      decoration: const InputDecoration(
                        hintText: 'Masukkan Nama Anda',
                      ),
                      autofillHints: const [AutofillHints.name],
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 20.0),
                    LabeledTextField(
                      controller: stateAuthentication.textControllerPhoneNumberSignUp,
                      labelText: 'Nomor Handphone',
                      decoration: const InputDecoration(
                        hintText: 'Masukkan Nomor Handphone Anda',
                      ),
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
                            decoration: const InputDecoration(
                              hintText: 'Masukkan Sekolah Anda',
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
                      onPressed: () => NavigationHelper.back(),
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
