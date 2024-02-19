import 'package:flutter/material.dart';
import 'package:personal_training_app/view/screens/clients/screen_muscle_clients.dart';

class MuscleBuildingScreen {
  void _homeScreenNavigation(BuildContext context, String title) {
    Navigator.push(
        context,
        MaterialPageRoute(
          settings: const RouteSettings(name: "/screenclient"),
          builder: (context) => const ScreenClient(
            tileclientdetails: 'Muscle Building',
          ),
        ));
  }

  void homeScreenNavigation(BuildContext context, String title) {
    _homeScreenNavigation(context, title);
  }
}
