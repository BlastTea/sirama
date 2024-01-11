import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_widget/m_widget.dart';
import 'package:sirama/blocs/blocs.dart';
import 'package:sirama/utils/config.dart';
import 'package:sirama/views/pages/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static HomepageBloc homepageBloc = HomepageBloc();
  static ChatmeBloc chatmeBloc = ChatmeBloc();

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => homepageBloc),
          BlocProvider(create: (context) => chatmeBloc),
        ],
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            scaffoldMessengerKey: scaffoldMessengerKey,
            title: Config.appName,
            theme: ThemeData.light().copyWith(
              materialTapTargetSize: MaterialTapTargetSize.padded,
              colorScheme: ColorScheme.fromSeed(
                seedColor: Config.primaryColor,
                primary: Config.primaryColor,
              ),
              filledButtonTheme: const FilledButtonThemeData(
                style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size.fromHeight(60.0)),
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: Config.outlinedBorder,
                focusedBorder: Config.focusBorder,
                errorBorder: Config.errorBorder,
              ),
            ),
            home: const WelcomePage(),
          ),
        ),
      );
}
