import 'package:azkar_app/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  static const String screenRoute = '/about_screen';

  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _message = 'لا يوجد رسالة';

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if (modalRoute != null && modalRoute.settings.arguments != null) {
      // if (modalRoute.settings.arguments is Map<String, dynamic>) {
      Map<String, dynamic> map =
          modalRoute.settings.arguments as Map<String, dynamic>;
      if (map.containsKey('message')) {
        _message = map['message'];
      }
      // }
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'عن التطبيق',
          style:
              GoogleFonts.arefRuqaa(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Container(
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
        child: Text(
          _message,
          style: GoogleFonts.arefRuqaa(
              fontWeight: FontWeight.bold, fontSize: 26, color: kLigthColor),
        ),
      ),
    );
  }
}
