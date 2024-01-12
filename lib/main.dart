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
            textScaler: TextScaler.noScaling,
          ),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            scaffoldMessengerKey: scaffoldMessengerKey,
            title: Config.appName,
            theme: ThemeData.light().copyWith(
              materialTapTargetSize: MaterialTapTargetSize.padded,
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xFF8BC0F8),
              ),
              filledButtonTheme: const FilledButtonThemeData(
                style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size.fromHeight(60.0)),
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
            ),
            home: const WelcomePage(),
          ),
        ),
      );
}
