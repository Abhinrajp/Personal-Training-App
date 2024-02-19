import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:personal_training_app/controller/db_contoller/dbfuntions.dart';
import 'package:personal_training_app/view/screens/home_screen/homebar.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    notificationPermision();
    super.initState();
  }

  int? len;
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
                  nextScreen: const HomeBarScreen()),
            )
          ],
        ),
      ),
    );
  }

  notificationPermision() async {
    len = await getAllClientsFromAllBoxes();
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .requestNotificationsPermission();
  }
}
