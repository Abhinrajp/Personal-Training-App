import 'package:flutter/material.dart';

class ScreenWorkout extends StatefulWidget {
  final String workouttitle;
  final List<String> workout;
  final String backgroundimage;

  const ScreenWorkout({
    super.key,
    required this.workouttitle,
    required this.workout,
    required this.backgroundimage,
  });

  @override
  State<ScreenWorkout> createState() => _ScreenWorkoutState();
}

class _ScreenWorkoutState extends State<ScreenWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40, right: 20),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
            )),
      ),
      appBar: AppBar(
        title: Text(
          widget.workouttitle,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
      ),
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.backgroundimage),
                  fit: BoxFit.cover,
                  alignment: Alignment.center)),
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.3),
                    borderRadius: BorderRadius.circular(10)),
                height: 700,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: widget.workout.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              "${index + 1}.    ${widget.workout[index]}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
