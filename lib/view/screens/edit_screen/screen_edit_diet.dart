// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:personal_training_app/controller/db_contoller/dbfuntions.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:personal_training_app/model/workouts.dart';
import 'package:personal_training_app/view/screens/home_screen/homebar.dart';
import 'package:personal_training_app/widgets/custom_textfield.dart';

class ScreenEditDiet extends StatefulWidget {
  final ClientModelM clienteditWO;
  final int index;
  final String categorytitle;
  final String oldCategory;
  const ScreenEditDiet(
      {super.key,
      required this.clienteditWO,
      required this.index,
      required this.categorytitle,
      required this.oldCategory});

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
                image: AssetImage(
                    'assets/images/chris-bumstead-pre-workout-updated.webp'),
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
                                      child: Customtextfield(
                                        controller: efirstmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '07:30 AM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: esecondmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '08:30 AM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: ethirdmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '1130 AM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: efourthmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '01:00 PM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: efifthmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '04:30 PM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: esixthmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '08:30 PM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: eseventhmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '10:00 PM',
                                        valiator: 'Please add meal',
                                      )),
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

  Future<void> addeditClientDiet(context) async {
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
    if (widget.oldCategory == bodybuilding) {
      await deleteClient(widget.clienteditWO.id);
    } else if (widget.oldCategory == fatlose) {
      await deleteClientF(widget.clienteditWO.id);
    } else {
      await deleteClientC(widget.clienteditWO.id);
    }
    if (widget.clienteditWO.category == bodybuilding) {
      await addClient(clientModelM);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeBarScreen()),
          (route) => false);
    } else if (widget.clienteditWO.category == fatlose) {
      await addclientF(clientModelM);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeBarScreen()),
          (route) => false);
    } else {
      await addclientC(clientModelM);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeBarScreen()),
          (route) => false);
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        padding: EdgeInsets.all(8),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,
        content: Text(
          'Client Updated Successfully',
          textAlign: TextAlign.center,
        )));
  }
}
