import 'package:azkar_app/screens/about_screen.dart';
import 'package:azkar_app/screens/constants.dart';
import 'package:azkar_app/screens/home_screen.dart';
import 'package:azkar_app/screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent, elevation: 0),
        scaffoldBackgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: kDarkColor),
        fontFamily: GoogleFonts.arefRuqaa().fontFamily,
        textTheme: GoogleFonts.arefRuqaaTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [Locale('ar')],
      locale: const Locale('ar'),
      // home: LaunchScreen(),
      initialRoute: '/launch_screen',
      routes: {
        LaunchScreen.screenRoute: (context) => const LaunchScreen(),
        HomeScreen.screenRoute: (context) => const HomeScreen(),
        AboutScreen.screenRoute: (context) => const AboutScreen(),
      },
    );
  }
}
