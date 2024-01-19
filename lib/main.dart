import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_widget/m_widget.dart';
import 'package:sirama/blocs/blocs.dart';
import 'package:sirama/services/services.dart';
import 'package:sirama/utils/utils.dart';
import 'package:sirama/views/pages/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await MWidget.initialize(
    defaultLanguage: LanguageType.indonesiaIndonesian,
  );

  await ApiHelper.signInWithToken();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static HomepageBloc homepageBloc = HomepageBloc();
  static ChatmeBloc chatmeBloc = ChatmeBloc();
  static AuthenticationBloc authenticationBloc = AuthenticationBloc();

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => homepageBloc),
          BlocProvider(create: (context) => chatmeBloc),
          BlocProvider(create: (context) => authenticationBloc),
        ],
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: MaterialApp(
            routes: {
              '/film': (context) => const FilmPage(),
              '/podcast': (context) => const PodcastPage(),
              '/educational-video': (context) => const EducationalVideoPage(),
              '/infographics': (context) => const InfographicsPage(),
              '/mainscreening': (context) => const MainScreeningPage(),
            },
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            scaffoldMessengerKey: scaffoldMessengerKey,
            title: Config.appName,
            theme: ThemeData.light().copyWith(
              materialTapTargetSize: MaterialTapTargetSize.padded,
              colorScheme: Config.colorScheme,
              filledButtonTheme: FilledButtonThemeData(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        kShapeMedium,
                      ),
                    ),
                  ),
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: Config.greyColor.withOpacity(0.3),
                  ),
                ),
              ),
              chipTheme: ChipThemeData(
                selectedColor: Config.colorScheme.primary,
                secondaryLabelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(color: Config.colorScheme.onPrimary),
                checkmarkColor: Config.colorScheme.onPrimary,
              ),
            ),
            home: currentUser != null ? const Homepage() : const WelcomePage(),
          ),
        ),
      );
}
