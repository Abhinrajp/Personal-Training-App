import 'package:flutter/material.dart';
import 'package:personal_training_app/screens/clients.dart';
import 'package:personal_training_app/screens/screen_core_clients.dart';
import 'package:personal_training_app/screens/screen_fatlose_clients.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: .8,
              image: AssetImage(
                'assets/images/Cbum-Wallpaper-www.wallpapersun.com-c-10.jpg',
              ),
              fit: BoxFit.cover)),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 27,
                  right: 27,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.group,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/screenclient"),
                          builder: (context) => const ScreenClient(
                            tileclientdetails: 'Muscle Building',
                          ),
                        ));
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 340,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              spreadRadius: 3,
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/download (1).jpeg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Positioned(
                          bottom: 8,
                          left: 16.0,
                          child: Title(
                            color: Colors.black,
                            child: const Text(
                              'Muscle Building',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/screenfatlose"),
                          builder: (context) => const ScreenFatloseClients(
                            tileclientdetails: 'Fat Lose',
                          ),
                        ));
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 340,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              spreadRadius: 3,
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/wp10467346-c-bum-wallpapers.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 16.0,
                        child: Title(
                          color: Colors.white,
                          child: const Text(
                            'Fat Lose',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        settings: const RouteSettings(name: "/screencore"),
                        builder: (context) => const ScreenCoreClients(
                          tileclientdetails: 'Core Fitness',
                        ),
                      ));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 340,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(1),
                            spreadRadius: 3,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/Cbum • Chris Bumstead.jpeg'),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      left: 16.0,
                      child: Title(
                        color: Colors.white,
                        child: const Text(
                          'Core Fitness',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    ));
  }
}
