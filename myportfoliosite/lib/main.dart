import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.inconsolataTextTheme()),
      debugShowCheckedModeBanner: false,
      title: "MyPortFolio",
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Color tg = Color(0xFF4AF626);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            height: 1000,
            width: 1000,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedTextKit(
                        isRepeatingAnimation: false,
                        onFinished: () {
                          print("animation completed");
                        },
                        animatedTexts: [
                          TyperAnimatedText(
                              '# whois is Naveen Kumar Pulikanti ?\n\nA Computer Science Student \n\nUI\\UX Designer\n\nCyber Security Researcher',
                              curve: Curves.linear,
                              speed: Duration(milliseconds: 50),
                              textStyle: TextStyle(
                                color: tg,
                                fontSize: 20,
                              )),
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
