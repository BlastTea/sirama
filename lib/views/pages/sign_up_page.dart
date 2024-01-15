part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
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
                  labelText: 'Nama Lengkap',
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Email',
                  ),
                  autofillHints: const [AutofillHints.name],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 20.0),
                LabeledTextField.password(
                  labelText: 'Password',
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Password',
                  ),
                  autofillHints: const [AutofillHints.newPassword],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 20.0),
                LabeledTextField(
                  labelText: 'Email',
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Email',
                  ),
                  autofillHints: const [AutofillHints.email],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 20.0),
                LabeledTextField(
                  labelText: 'Nomor Handphone',
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Phone',
                  ),
                  autofillHints: const [AutofillHints.telephoneNumber],
                  keyboardType: TextInputType.number,
                  inputFormatters: [textFormatterDigitsOnly],
                ),
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
}
