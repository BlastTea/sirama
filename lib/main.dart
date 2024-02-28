import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:m_widget/m_widget.dart';
import 'package:sirama/blocs/blocs.dart';
import 'package:sirama/services/services.dart';
import 'package:sirama/utils/utils.dart';
import 'package:sirama/views/fragments/fragments.dart';
import 'package:sirama/views/pages/pages.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

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
  static ChatMeBloc chatmeBloc = ChatMeBloc();
  static AuthenticationBloc authenticationBloc = AuthenticationBloc();
  static AskTheExpertBloc askTheExpertBloc = AskTheExpertBloc();
  static QuoteBloc quoteBloc = QuoteBloc();
  static SkrinningBloc skrinningBloc = SkrinningBloc();
  static ContentFavoriteBloc contentFavorite = ContentFavoriteBloc();

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => homepageBloc),
        BlocProvider(create: (context) => chatmeBloc),
        BlocProvider(create: (context) => authenticationBloc),
        BlocProvider(create: (context) => askTheExpertBloc),
        BlocProvider(create: (context) => quoteBloc),
        BlocProvider(create: (context) => skrinningBloc),
        BlocProvider(create: (context) => contentFavorite),
      ],
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.noScaling,
        ),
        child: MWidgetTheme(
          dialogTheme: MWidgetDialogThemeData(
            primaryFilledButton: true,
            onRenderMessage: (context, message) {
              if (message.contains('<!doctype html>') || message.contains('<!DOCTYPE html>')) {
                return SizedBox.fromSize(
                  size: Size.square(MediaQuery.sizeOf(context).width - 32.0),
                  child: SingleChildScrollView(
                    child: Html(data: message),
                  ),
                );
              }

              return SelectableText(message);
            },
          ),
          child: MaterialApp(
            routes: {
              '/film': (context) => const FilmPage(),
              '/podcast': (context) => const PodcastPage(),
              '/educational-video': (context) => const EducationalVideoPage(),
              '/infographics': (context) => const InfographicsPage(),
              '/mainscreening': (context) => const MainScreeningPage(),
              '/screening': (context) => const ScreeningPage(),
              '/chatme': (context) => const ChatMeFragment(),
              '/asktheexpert': (context) => const AskTheExpertFragment(),
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
      ),
    );
  }
}
