import 'package:azkar_app/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  static const String screenRoute = '/launch_screen';

  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    debugPrint('initState');
    Future.delayed(const Duration(seconds: 3), () {
      // Navigator.pushNamed(context, '/home_screen');
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    return Scaffold(
      body: Container(
        // height: double.infinity,
        // width: double.infinity,
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                kMidColor,
                kDarkColor,
              ]),
        ),
        child: Text('المسبحة الالكترونية',
            style: GoogleFonts.arefRuqaa(
              fontSize: 35,
              fontWeight: FontWeight.w800,
              color: kLigthColor,
            )),
      ),
    );
  }
}
