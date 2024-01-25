import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_training_app/models/client_model.dart';
import 'package:personal_training_app/models/workouts.dart';
import 'package:personal_training_app/screens/clients.dart';
import 'package:personal_training_app/screens/screeen_home.dart';
import 'package:personal_training_app/screens/screen_core_clients.dart';
import 'package:personal_training_app/screens/screen_fatlose_clients.dart';
import 'package:personal_training_app/screens/splash_screen.dart';

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
              const ScreenCoreClients(tileclientdetails: '')
        },
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home: const ScreenSplash());
  }
}
