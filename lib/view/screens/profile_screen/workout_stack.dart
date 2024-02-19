import 'package:flutter/material.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:personal_training_app/view/screens/profile_screen/diet_stack.dart';
import 'package:personal_training_app/view/screens/profile_screen/profile_stack.dart';
import 'package:personal_training_app/view/screens/profile_screen/workouts.dart';

class ScreenDetails extends StatefulWidget {
  final ClientModelM clientdata;
  final String category;
  final int index;

  const ScreenDetails({
    super.key,
    required this.clientdata,
    required this.category,
    required this.index,
  });

  @override
  State<ScreenDetails> createState() => _ScreenDetailsState();
}

class _ScreenDetailsState extends State<ScreenDetails> {
  final String musclebuilding = 'Muscle Building';
  final String fatlose = 'Fat Lose';
  final String corefitness = 'Core Fitness';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size(100, 70),
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 61, 61, 61),
              bottom: const TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'Workouts',
                  ),
                  Tab(text: 'Diet Plan'),
                  Tab(text: 'Profile'),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenWorkout(
                                workouttitle: 'Chest',
                                workout: widget.clientdata.workoutsobj!.chest,
                                backgroundimage:
                                    'assets/images/Chris Bumstead CBUM _ Gym motivation wallpaper, Gym wallpaper, Bodybuilding pictures.jpeg',
                              ),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Card(
                          child: Stack(
                            children: [
                              Container(
                                height: 140,
                                width: 340,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          spreadRadius: 4)
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Chris Bumstead CBUM _ Gym motivation wallpaper, Gym wallpaper, Bodybuilding pictures.jpeg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center)),
                              ),
                              const Positioned(
                                bottom: 8,
                                left: 16.0,
                                child: Text(
                                  'Chest',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenWorkout(
                                workouttitle: 'Lats',
                                workout: widget.clientdata.workoutsobj!.lats,
                                backgroundimage:
                                    'assets/images/Chris Bumstead.jpeg',
                              ),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Card(
                          child: Stack(
                            children: [
                              Container(
                                height: 140,
                                width: 340,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          spreadRadius: 4)
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Chris Bumstead.jpeg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center)),
                              ),
                              const Positioned(
                                bottom: 8,
                                left: 16.0,
                                child: Text(
                                  'Lats',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenWorkout(
                                workouttitle: 'Arms',
                                workout: widget.clientdata.workoutsobj!.arms,
                                backgroundimage:
                                    'assets/images/Screenshot 2024-01-06 164644.png',
                              ),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Card(
                          child: Stack(
                            children: [
                              Container(
                                height: 140,
                                width: 340,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          spreadRadius: 4)
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Screenshot 2024-01-06 164644.png'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center)),
                              ),
                              const Positioned(
                                bottom: 8,
                                left: 16.0,
                                child: Text(
                                  'Arms',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenWorkout(
                                workouttitle: 'Shoulder',
                                workout:
                                    widget.clientdata.workoutsobj!.shoulder,
                                backgroundimage:
                                    'assets/images/chris-bumstead-shoulder-workout.jpg',
                              ),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Card(
                          child: Stack(
                            children: [
                              Container(
                                height: 140,
                                width: 340,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          spreadRadius: 4)
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/chris-bumstead-shoulder-workout.jpg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center)),
                              ),
                              const Positioned(
                                bottom: 8,
                                left: 16.0,
                                child: Text(
                                  'Shoulder',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenWorkout(
                                workouttitle: "Abs",
                                workout: widget.clientdata.workoutsobj!.abs,
                                backgroundimage:
                                    'assets/images/Cbum • Chris Bumstead.jpeg',
                              ),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Card(
                          child: Stack(
                            children: [
                              Container(
                                height: 140,
                                width: 340,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          spreadRadius: 4)
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Cbum • Chris Bumstead.jpeg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center)),
                              ),
                              const Positioned(
                                bottom: 8,
                                left: 16.0,
                                child: Text(
                                  'Abs',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenWorkout(
                                workouttitle: 'leg',
                                workout: widget.clientdata.workoutsobj!.leg,
                                backgroundimage:
                                    'assets/images/Chris Bumstead on X.jpeg',
                              ),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Card(
                          child: Stack(
                            children: [
                              Container(
                                height: 140,
                                width: 340,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          spreadRadius: 4)
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Chris Bumstead on X.jpeg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center)),
                              ),
                              const Positioned(
                                bottom: 8,
                                left: 16.0,
                                child: Text(
                                  'Leg',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ScreenDietStack(
                clientdata: widget.clientdata,
              ),
              ScreenProfileStack(
                // category: widget.category,
                // index: widget.index,
                clientdata: widget.clientdata,
              )
            ],
          ),
        ),
      ),
    );
  }
}
