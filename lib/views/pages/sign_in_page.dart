part of 'pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: AutofillGroup(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              children: [
                const SizedBox(height: 28.0),
                Text(
                  'Yuk, mulai masuk!',
                  textAlign: TextAlign.center,
                  style: Config.textStyleHeadlineMedium,
                ),
                const SizedBox(height: 65.0),
                const LabeledTextField(
                  labelText: 'Email',
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                  ),
                  autofillHints: [AutofillHints.email],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 23.0),
                const LabeledTextField.password(
                  labelText: 'Password',
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                  ),
                  autofillHints: [AutofillHints.password],
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
                  onPressed: () {},
                  labelText: 'Masuk',
                  textStyle: Config.textStyleHeadlineSmall.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 72.0),
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
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: Config.textStyleTitleSmall.copyWith(
                    color: const Color(0xFF0B8FAC),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
