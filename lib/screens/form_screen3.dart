import 'package:flutter/material.dart';
import 'package:personal_training_app/functions/dbfuntions.dart';
import 'package:personal_training_app/models/client_model.dart';
import 'package:personal_training_app/models/workouts.dart';

class ScreenFormThree extends StatefulWidget {
  final String titleform;
  final ClientModelM clientWO;
  const ScreenFormThree(
      {super.key, required this.titleform, required this.clientWO});

  @override
  State<ScreenFormThree> createState() => _ScreenFormThreeState();
}

class _ScreenFormThreeState extends State<ScreenFormThree> {
  final String bodybuilding = 'Muscle Building';
  final String fatlose = 'Fat Lose';
  final String core = 'Core Fitness';
  late ClientModelM clientModelM;
  @override
  void initState() {
    super.initState();
    clientModelM = widget.clientWO;
  }

  final dietkey = GlobalKey<FormState>();
  final firstmealcontoll = TextEditingController();
  final secondmealcontoll = TextEditingController();
  final thirdmealcontoll = TextEditingController();
  final fourthmealcontoll = TextEditingController();
  final fifthmealcontoll = TextEditingController();
  final sixthmealcontoll = TextEditingController();
  final seventhmealcontoll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        title: const Text(
          'Diet Nutrition',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/download (2).jpeg'),
                fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  child: Container(
                      width: 310,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0),
                          borderRadius: BorderRadius.circular(8)),
                      child: Form(
                          key: dietkey,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please add meal';
                                        }
                                        return null;
                                      },
                                      controller: firstmealcontoll,
                                      keyboardType: TextInputType.name,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        hintText: '07:30 Am',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.5),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please add meal';
                                        }
                                        return null;
                                      },
                                      controller: secondmealcontoll,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        hintText: '08:30 AM',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.5),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please add meal';
                                        }
                                        return null;
                                      },
                                      controller: thirdmealcontoll,
                                      keyboardType: TextInputType.name,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        hintText: '11:30 AM',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.5),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please add meal';
                                        }
                                        return null;
                                      },
                                      controller: fourthmealcontoll,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        hintText: '01:00 PM',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.5),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please add meal';
                                        }
                                        return null;
                                      },
                                      controller: fifthmealcontoll,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        hintText: '04:30 PM',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.5),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please add meal';
                                        }
                                        return null;
                                      },
                                      controller: sixthmealcontoll,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        hintText: '08:30 PM',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.5),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please add meal';
                                        }
                                        return null;
                                      },
                                      controller: seventhmealcontoll,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        hintText: '10:00 PM',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.5),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 220, top: 20),
                                    child: TextButton(
                                        onPressed: () {
                                          if (dietkey.currentState!
                                              .validate()) {
                                            addClientDiet(context)
                                                .then((value) {});
                                          }
                                        },
                                        child: const Text(
                                          "Submit",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> addClientDiet(context) async {
    final firstmeal = firstmealcontoll.text.trim();
    final secondmeal = secondmealcontoll.text.trim();
    final thirdmeal = thirdmealcontoll.text.trim();
    final fourthmeal = fourthmealcontoll.text.trim();
    final fifthmeal = fifthmealcontoll.text.trim();
    final sixthmeal = sixthmealcontoll.text.trim();
    final seventhmeal = seventhmealcontoll.text.trim();
    final clientdiet = Diet(firstmeal, secondmeal, thirdmeal, fourthmeal,
        fifthmeal, sixthmeal, seventhmeal);
    clientModelM.dietobj = clientdiet;
    if (widget.titleform == bodybuilding) {
      await addClient(clientModelM);
      Navigator.popUntil(context, ModalRoute.withName('/screenclient'));
    } else if (widget.titleform == fatlose) {
      await addclientF(clientModelM);
      Navigator.popUntil(context, ModalRoute.withName('/screenfatlose'));
    } else {
      await addclientC(clientModelM);
      Navigator.popUntil(context, ModalRoute.withName('/screencore'));
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.all(8),
        backgroundColor: Colors.green,
        content: Text(
          'Client added Successfully',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
