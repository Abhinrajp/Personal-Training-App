import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:personal_training_app/model/workouts.dart';
import 'package:personal_training_app/notification/local_notification.dart';
import 'package:personal_training_app/view/screens/clients/screen_muscle_clients.dart';
import 'package:personal_training_app/view/screens/home_screen/full_client_screen.dart';
import 'package:personal_training_app/view/screens/home_screen/homebar.dart';
import 'package:personal_training_app/view/screens/home_screen/screeen_home.dart';
import 'package:personal_training_app/view/screens/clients/screen_core_clients.dart';
import 'package:personal_training_app/view/screens/clients/screen_fatlose_clients.dart';
import 'package:personal_training_app/view/screens/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(ClientModelMAdapter().typeId)) {
    Hive.registerAdapter(ClientModelMAdapter());
  }
  if (!Hive.isAdapterRegistered(WorkoutsAdapter().typeId)) {
    Hive.registerAdapter(WorkoutsAdapter());
  }
  if (!Hive.isAdapterRegistered(DietAdapter().typeId)) {
    Hive.registerAdapter(DietAdapter());
  }
  await LocalNotification.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/screenHome': (context) => const ScreenHome(),
          '/screenclient': (context) => const ScreenClient(
                tileclientdetails: '',
              ),
          '/screenfatlose': (context) =>
              const ScreenFatloseClients(tileclientdetails: ''),
          '/screencore': (context) =>
              const ScreenCoreClients(tileclientdetails: ''),
          '/screenssearch': (context) => const FullClientScreen(),
          '/screenhomebar': (context) => const HomeBarScreen(),
        },
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home: const ScreenSplash());
  }
}
