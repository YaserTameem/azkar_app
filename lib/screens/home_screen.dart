import 'package:azkar_app/screens/about_screen.dart';
import 'package:azkar_app/screens/constants.dart';
import 'package:azkar_app/screens/faqs_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const String screenRoute = '/home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _content = 'الحمد لله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: kDarkColor,
          color: kLigthColor,
          animationDuration: const Duration(microseconds: 300),
          height: 55,
          onTap: (index) {
            if (index == 1) {
              Navigator.pushNamed(context, AboutScreen.screenRoute,
                  arguments: <String, dynamic>{'message': 'واجهة عن التطبيق'});
            }
            if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FAQsSCREEN(
                    message: 'لا توجد اسئلة',
                  ),
                ),
              );
            }
          },
          items: const [
            Icon(
              Icons.home,
              color: kDarkColor,
              size: 30,
            ),
            Icon(
              Icons.info,
              color: kDarkColor,
              size: 30,
            ),
            Icon(
              Icons.question_answer,
              color: kDarkColor,
              size: 30,
            ),
          ]),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'مسبحة الاذكار',
          style:
              GoogleFonts.arefRuqaa(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          //   IconButton(
          //       onPressed: () {
          //         Navigator.pushNamed(context, '/about_screen',
          //             arguments: <String, dynamic>{
          //               // 'message' : 'واجهة عن التطبيق'
          //             });
          //       },
          //       icon: const Icon(Icons.info)),
          PopupMenuButton<String>(onSelected: (String selectedItem) {
            if (selectedItem != _content) {
              setState(() {
                _content = selectedItem;
              });
            }
            debugPrint('Content : $_content');
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: 'الحمد لله',
                height: 0,
                child: Text(
                  'الحمد لله',
                  style: GoogleFonts.arefRuqaa(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kDarkColor,
                  ),
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 'سبحان الله',
                height: 0,
                child: Text(
                  'سبحان الله',
                  style: GoogleFonts.arefRuqaa(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kDarkColor,
                  ),
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 'استغفر الله',
                height: 0,
                child: Text(
                  'استغفر الله',
                  style: GoogleFonts.arefRuqaa(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kDarkColor,
                  ),
                ),
              ),
            ];
          })
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                kMidColor,
                kDarkColor,
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                  //borderRadius: BorderRadius.circular(35),
                  shape: BoxShape.circle,
                  color: kLigthColor,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://modo3.com/thumbs/fit630x300/27046/1591744391/%D9%83%D9%8A%D9%81_%D8%AA%D8%B5%D9%86%D8%B9_%D9%85%D8%B3%D8%A8%D8%AD%D8%A9.jpg'))),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsetsDirectional.symmetric(
                  vertical: 10, horizontal: 20),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kLigthColor,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.arefRuqaa(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: kDarkColor,
                      ),
                    ),
                  ),
                  // Spacer(),
                  Container(
                    alignment: AlignmentDirectional.center,
                    color: kDarkColor,
                    height: double.infinity,
                    width: 40,
                    child: Text(
                      _counter.toString(),
                      style: GoogleFonts.arefRuqaa(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: kLigthColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kDarkColor,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(15)))),
                      onPressed: () {
                        // _counter +=1;
                        setState(() {
                          _counter++;
                        });

                        debugPrint('Counter : $_counter');
                      },
                      child: Text(
                        'تسبيح',
                        style: GoogleFonts.arefRuqaa(
                          color: kLigthColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kLigthColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(15)),
                          )),
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      child: Text(
                        'اعادة',
                        style: GoogleFonts.arefRuqaa(
                          color: kDarkColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kLigthColor,
        child: const Icon(
          Icons.add,
          color: kDarkColor,
          size: 30,
        ),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}
