part of 'pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, stateAuthentication) {
          stateAuthentication as AuthenticationDataLoaded;

          if (kDebugMode) {
            stateAuthentication.textControllerUsernameSignIn.text = 'ady remaja';
            stateAuthentication.textControllerPasswordSignIn.text = '123';
          }

          return Scaffold(
            body: SafeArea(
              child: AutofillGroup(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  children: [
                    const SizedBox(height: 20.0),
                    Text(
                      'Yuk, mulai masuk!',
                      textAlign: TextAlign.center,
                      style: Config.textStyleHeadlineMedium,
                    ),
                    const SizedBox(height: 64.0),
                    LabeledTextField(
                      focusNode: stateAuthentication.focusNodeUsernameSignIn,
                      controller: stateAuthentication.textControllerUsernameSignIn,
                      labelText: 'Username',
                      decoration: const InputDecoration(
                        hintText: 'Masukkan Username Anda',
                      ),
                      autofillHints: const [AutofillHints.email],
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 20.0),
                    LabeledTextField.password(
                      focusNode: stateAuthentication.focusNodePasswordSignIn,
                      controller: stateAuthentication.textControllerPasswordSignIn,
                      labelText: 'Password',
                      decoration: const InputDecoration(
                        hintText: 'Masukkan Password Anda',
                      ),
                      autofillHints: const [AutofillHints.password],
                      onEditingComplete: () => MyApp.authenticationBloc.add(SignInPressed()),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Lupa password?',
                          style: Config.textStyleTitleSmall.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    MyFilledButton(
                      onPressed: () => MyApp.authenticationBloc.add(SignInPressed()),
                      labelText: 'Masuk',
                      buttonStyle: FilledButton.styleFrom(
                        textStyle: Config.textStyleHeadlineSmall.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      isLoading: stateAuthentication.isSingingIn,
                    ),
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
                    'Belum punya akun?',
                    style: Config.textStyleTitleSmall.copyWith(
                      color: Config.greyColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const SignUpPage())),
                    child: Text(
                      'Sign Up',
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
