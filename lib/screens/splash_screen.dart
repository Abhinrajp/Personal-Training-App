import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:personal_training_app/screens/screeen_home.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/images/Screenshot 2024-01-12 164249.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: AnimatedSplashScreen(
                  splash: const Text(
                    'BE FIT',
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 200, 200, 200)),
                  ),
                  backgroundColor: Colors.transparent,
                  nextScreen: const ScreenHome()),
            )
          ],
        ),
      ),
    );
  }
}
