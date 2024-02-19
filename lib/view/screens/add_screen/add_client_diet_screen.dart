import 'package:flutter/material.dart';
import 'package:personal_training_app/controller/db_contoller/dbfuntions.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:personal_training_app/model/workouts.dart';
import 'package:personal_training_app/widgets/custom_textfield.dart';

class ScreenFormThree extends StatefulWidget {
  // final String titleform;
  final ClientModelM clientWO;
  const ScreenFormThree({super.key, required this.clientWO});

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
                                        controller: firstmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '07:30 AM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(height: 30),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: secondmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '08:30 AM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(height: 30),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: thirdmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '1130 AM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(height: 30),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: fourthmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '01:00 PM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(height: 30),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: fifthmealcontoll,
                                        keyboardType: TextInputType.name,
                                        labelText: '04:30 PM',
                                        valiator: 'Please add meal',
                                      )),
                                  const SizedBox(height: 30),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: sixthmealcontoll,
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
                                        controller: seventhmealcontoll,
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

    if (widget.clientWO.category == bodybuilding) {
      await addClient(clientModelM);
    } else if (widget.clientWO.category == fatlose) {
      await addclientF(clientModelM);
    } else {
      await addclientC(clientModelM);
    }

    Navigator.pushReplacementNamed(context, '/screenhomebar');

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
