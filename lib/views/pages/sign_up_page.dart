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
                const SizedBox(height: 28.0),
                Text(
                  'Yuk, buat akun baru',
                  textAlign: TextAlign.center,
                  style: Config.textStyleHeadlineMedium,
                ),
                const SizedBox(height: 65.0),
                const LabeledTextField(
                  labelText: 'Nama Lengkap',
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                  ),
                  autofillHints: [AutofillHints.name],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 23.0),
                const LabeledTextField.password(
                  labelText: 'Password',
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                  ),
                  autofillHints: [AutofillHints.newPassword],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 23.0),
                const LabeledTextField(
                  labelText: 'Email',
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                  ),
                  autofillHints: [AutofillHints.email],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 23.0),
                LabeledTextField(
                  labelText: 'Nomor Handphone',
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Phone',
                  ),
                  autofillHints: const [AutofillHints.telephoneNumber],
                  keyboardType: TextInputType.number,
                  inputFormatters: [textFormatterDigitsOnly],
                ),
                const SizedBox(height: 33.0),
                MyFilledButton(
                  onPressed: () => Get.offAll(() => Homepage()),
                  labelText: 'Daftar',
                  textStyle: Config.textStyleHeadlineSmall.copyWith(
                    color: Colors.white,
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
                onPressed: () => Get.back(),
                child: Text(
                  'Sign In',
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
