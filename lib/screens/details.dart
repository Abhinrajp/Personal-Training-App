import 'dart:io';

import 'package:flutter/material.dart';
import 'package:personal_training_app/models/client_model.dart';
import 'package:personal_training_app/screens/workouts.dart';

class ScreenDetails extends StatefulWidget {
  final ClientModelM clientdata;
  final String category;

  const ScreenDetails({
    super.key,
    required this.clientdata,
    required this.category,
  });

  @override
  State<ScreenDetails> createState() => _ScreenDetailsState();
}

class _ScreenDetailsState extends State<ScreenDetails> {
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
                                    'assets/images/Gym Photos.jpeg',
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Gym Photos.jpeg'),
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
              Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/download (2).jpeg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 25, left: 25, top: 50, bottom: 50),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.3),
                            borderRadius: BorderRadius.circular(10)),
                        height: 300,
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Text(
                                "07:30 AM.    ${widget.clientdata.dietobj!.firstmeal}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                "08:30 AM.    ${widget.clientdata.dietobj!.secondmeal}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                "11:30 AM.   ${widget.clientdata.dietobj!.thirdmeal}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                "01:30 AM.    ${widget.clientdata.dietobj!.fourthmeal}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                "04:30 AM.    ${widget.clientdata.dietobj!.fifthmeal}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                "08:30 AM.    ${widget.clientdata.dietobj!.sixthmeal}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                "10:30 AM.    ${widget.clientdata.dietobj!.seventhmeal}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 248, top: 30),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 209, 199, 199),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 400,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            child: Image(
                              image: FileImage(File(widget.clientdata.image)),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: GestureDetector(
                            onTap: () {
                              print('object');
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                      backgroundColor: Colors.black,
                                      // title: Text('Client'),
                                      content: Container(
                                        height: 500,
                                        width: 300,
                                        // color: Colors.blue,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 30),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Name",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    "Age",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    "Place",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    "Height",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blueGrey,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    "Weight",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    "Blood",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    "Plan",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    widget.clientdata.name,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                  const SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    widget.clientdata.age,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                  const SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    widget.clientdata.place,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                  const SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    "${widget.clientdata.height} CM",
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                  const SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    "${widget.clientdata.weight} KG",
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                  const SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    widget.clientdata.blood,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                  const SizedBox(
                                                    height: 13,
                                                  ),
                                                  Text(
                                                    "${widget.clientdata.plan} Month",
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ));
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.clientdata.name,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          widget.clientdata.age,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          widget.category,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "${widget.clientdata.plan} Month",
                                          style: const TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "${widget.clientdata.height} CM",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "${widget.clientdata.weight} KG",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 170,
                                    decoration: const BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                  Positioned(
                                      right: 8,
                                      top: 148,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              size: 35,
                                              Icons.camera_alt_outlined)))
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 170,
                                    decoration: const BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                  Positioned(
                                      right: 8,
                                      top: 148,
                                      child: IconButton(
                                          onPressed: () {
                                            print('object');
                                          },
                                          icon: const Icon(
                                              size: 35,
                                              Icons.camera_alt_outlined)))
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 75),
                              child: Text(
                                'Week 1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Week 7',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Stack(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    color: Colors.white),
                                height: 200,
                                width: double.infinity,
                              ),
                              const Positioned(
                                left: 20,
                                top: 10,
                                child: Text(
                                  'Updates',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              Positioned(
                                  left: 260,
                                  top: 150,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                        minimumSize: MaterialStateProperty.all(
                                            const Size(70, 35)),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Save',
                                        style: TextStyle(color: Colors.black),
                                      )))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
