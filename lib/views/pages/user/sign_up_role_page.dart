part of '../pages.dart';

class SignUpRolePage extends StatelessWidget {
  const SignUpRolePage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, stateAuthentication) {
          stateAuthentication as AuthenticationDataLoaded;

          return Scaffold(
            body: SafeArea(
              child: AutofillGroup(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    const SizedBox(height: 20.0),
                    Text(
                      'Mau daftar sebagai apa?',
                      textAlign: TextAlign.center,
                      style: Config.textStyleHeadlineMedium,
                    ),
                    const SizedBox(height: 20.0),
                    ...[
                      UserRole.remaja,
                      UserRole.orangTua,
                      UserRole.tenagaAhli,
                      UserRole.kaderKesehatan,
                      UserRole.guru,
                    ].map(
                      (e) => RadioListTile(
                        value: e,
                        groupValue: stateAuthentication.role,
                        title: Text(e.text),
                        secondary: const Icon(Icons.person),
                        controlAffinity: ListTileControlAffinity.trailing,
                        onChanged: (value) => MyApp.authenticationBloc.add(SetSignUpRole(value: value!)),
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    MyFilledButton(
                      onPressed: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const SignUpPage())),
                      labelText: 'Lanjutkan pendaftaran',
                      buttonStyle: FilledButton.styleFrom(
                        textStyle: Config.textStyleHeadlineSmall.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
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
                    'Sudah punya akun?',
                    style: Config.textStyleTitleSmall.copyWith(
                      color: Config.greyColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () => NavigationHelper.back(),
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
