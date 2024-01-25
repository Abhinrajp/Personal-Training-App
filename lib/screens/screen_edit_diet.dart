// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:personal_training_app/functions/dbfuntions.dart';
import 'package:personal_training_app/models/client_model.dart';
import 'package:personal_training_app/models/workouts.dart';

class ScreenEditDiet extends StatefulWidget {
  final ClientModelM clienteditWO;
  final int index;
  final String categorytitle;
  const ScreenEditDiet(
      {super.key,
      required this.clienteditWO,
      required this.index,
      required this.categorytitle});

  @override
  State<ScreenEditDiet> createState() => _ScreenEditDietState();
}

class _ScreenEditDietState extends State<ScreenEditDiet> {
  final String bodybuilding = 'Muscle Building';
  final String fatlose = 'Fat Lose';
  final String core = 'Core Fitness';
  late ClientModelM clientModelM;
  @override
  void initState() {
    super.initState();
    clientModelM = widget.clienteditWO;
    efirstmealcontoll.text = widget.clienteditWO.dietobj?.firstmeal ?? '';
    esecondmealcontoll.text = widget.clienteditWO.dietobj?.secondmeal ?? '';
    ethirdmealcontoll.text = widget.clienteditWO.dietobj?.thirdmeal ?? '';
    efourthmealcontoll.text = widget.clienteditWO.dietobj?.fourthmeal ?? '';
    efifthmealcontoll.text = widget.clienteditWO.dietobj?.fifthmeal ?? '';
    esixthmealcontoll.text = widget.clienteditWO.dietobj?.sixthmeal ?? '';
    eseventhmealcontoll.text = widget.clienteditWO.dietobj?.seventhmeal ?? '';
  }

  final dietkey = GlobalKey<FormState>();
  final efirstmealcontoll = TextEditingController();
  final esecondmealcontoll = TextEditingController();
  final ethirdmealcontoll = TextEditingController();
  final efourthmealcontoll = TextEditingController();
  final efifthmealcontoll = TextEditingController();
  final esixthmealcontoll = TextEditingController();
  final eseventhmealcontoll = TextEditingController();
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
                      // height: 650,
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
                                      controller: efirstmealcontoll,
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
                                      controller: esecondmealcontoll,
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
                                      controller: ethirdmealcontoll,
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
                                      controller: efourthmealcontoll,
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
                                      controller: efifthmealcontoll,
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
                                      controller: esixthmealcontoll,
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
                                      controller: eseventhmealcontoll,
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
                                            addeditClientDiet(context);
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

  Future<void> addeditClientDiet(BuildContext cxt) async {
    final firstmeal = efirstmealcontoll.text.trim();
    final secondmeal = esecondmealcontoll.text.trim();
    final thirdmeal = ethirdmealcontoll.text.trim();
    final fourthmeal = efourthmealcontoll.text.trim();
    final fifthmeal = efifthmealcontoll.text.trim();
    final sixthmeal = esixthmealcontoll.text.trim();
    final seventhmeal = eseventhmealcontoll.text.trim();
    final clientdiet = Diet(firstmeal, secondmeal, thirdmeal, fourthmeal,
        fifthmeal, sixthmeal, seventhmeal);
    clientModelM.dietobj = clientdiet;

    if (widget.categorytitle == bodybuilding) {
      await editClient(widget.index, clientModelM);
      Navigator.popUntil(cxt, ModalRoute.withName('/screenclient'));
    } else if (widget.categorytitle == fatlose) {
      await editClientF(widget.index, clientModelM);
      Navigator.popUntil(context, ModalRoute.withName('/screenfatlose'));
    } else {
      await editClientC(widget.index, clientModelM);
      Navigator.popUntil(context, ModalRoute.withName('/screencore'));
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        padding: EdgeInsets.all(8),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,
        content: Text(
          'Client Updated Successfully',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
