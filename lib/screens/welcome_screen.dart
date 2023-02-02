import 'package:education_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: Color(0xFF674AEF),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70.0),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'images/flutter.png',
                      scale: 0.8,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: const BoxDecoration(
                  color: Color(0xFF674AEF),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: const EdgeInsets.only(top: 40.0, bottom: 30.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70.0),
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Learning is Everything',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                        "Learning with Pleasure with Dear Programmer, Wherever you are.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                    const SizedBox(height: 60.0),
                    Material(
                      color: const Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 80.0),
                          child: const Text(
                            "Get Start",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
