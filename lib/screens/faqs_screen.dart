import 'package:azkar_app/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQsSCREEN extends StatelessWidget {
  const FAQsSCREEN({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'الاسئلة الشائعة',
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
          message,
          style: GoogleFonts.arefRuqaa(
              fontWeight: FontWeight.bold, fontSize: 26, color: kLigthColor),
        ),
      ),
    );
  }
}
