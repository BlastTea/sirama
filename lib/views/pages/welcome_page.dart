part of 'pages.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Image.asset(
                'assets/dummy logo.png',
                width: 64.0,
                height: 64.0,
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                  text: 'Welcome to ',
                  children: [
                    TextSpan(
                      text: 'sirama',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                  style: Config.textStyleHeadlineLarge,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              Padding(
                padding: responsivePadding(MediaQuery.sizeOf(context), minimumHorizontalPadding: 64.0),
                child: Image.asset(
                  'assets/welcome image.png',
                ),
              ),
              const SizedBox(height: 32.0),
              Center(
                child: MyFilledButton(
                  onPressed: () => Get.to(const SignInPage()),
                  iconAssetName: 'assets/icons/Monotone arrow right.png',
                  labelText: 'Daftar',
                ),
              ),
              const SizedBox(height: 8.0),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Lanjutkan sebagai guest',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF5D6A85),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 64.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/ugm.png',
                    width: 50.0,
                    height: 50.0,
                  ),
                  const SizedBox(width: 16.0),
                  Image.asset(
                    'assets/lpdp.png',
                    height: 50.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
