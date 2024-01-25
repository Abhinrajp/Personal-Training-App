import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:personal_training_app/models/client_model.dart';
import 'package:personal_training_app/models/workouts.dart';
import 'package:personal_training_app/screens/form_screen3.dart';

class ScreenFormTwo extends StatefulWidget {
  final ClientModelM clietdt;
  final String titleform;
  const ScreenFormTwo(
      {super.key, required this.titleform, required this.clietdt});

  @override
  State<ScreenFormTwo> createState() => _ScreenFormTwoState();
}

class _ScreenFormTwoState extends State<ScreenFormTwo> {
  final GlobalKey<FormState> dropdownformKey = GlobalKey<FormState>();
  List<String> selectedChestOptions = [];
  List<String> selectedLatsOptions = [];
  List<String> selectedShoulderOptions = [];
  List<String> selectedArmsOptions = [];
  List<String> selectedAbsOptions = [];
  List<String> selectedLegOptions = [];
  late ClientModelM clientModelM;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    clientModelM = widget.clietdt;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        title: const Text(
          'Workouts',
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
                    'assets/images/Screenshot 2024-01-06 164644.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // height: 650,
                  width: 310,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0),
                      borderRadius: BorderRadius.circular(8)),
                  child: Form(
                    key: dropdownformKey,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15, top: 10),
                              child: MultiSelectDropDown(
                                fieldBackgroundColor:
                                    Colors.white.withOpacity(.5),
                                hint: 'Chest',
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                showClearIcon: true,
                                onOptionSelected: (options) {
                                  selectedChestOptions = [];
                                  options.forEach((element) {
                                    selectedChestOptions.add(element.label);
                                  });

                                  debugPrint(selectedChestOptions.first);
                                },
                                options: const <ValueItem>[
                                  ValueItem(
                                      label: 'Incline Bench press', value: '1'),
                                  ValueItem(
                                      label: 'Crossover decline', value: '2'),
                                  ValueItem(label: 'Dumbell fly', value: '3'),
                                  ValueItem(label: 'Butterfly', value: '4'),
                                  ValueItem(label: 'Crossover', value: '5'),
                                  ValueItem(
                                      label: 'Incline Dumbell press',
                                      value: '6'),
                                  ValueItem(label: 'Pullover', value: '7'),
                                  ValueItem(label: 'Pushup', value: '8'),
                                  ValueItem(
                                      label: 'Close grip bench press',
                                      value: '9'),
                                  ValueItem(label: 'Cable fly', value: '10'),
                                  ValueItem(
                                      label: 'Chest Squeeze Push-Ups',
                                      value: '11'),
                                  ValueItem(
                                      label: 'Close-Grip Bench Press',
                                      value: '12'),
                                  ValueItem(label: 'Super set', value: '13'),
                                ],
                                maxItems: 5,
                                selectionType: SelectionType.multi,
                                chipConfig:
                                    const ChipConfig(wrapType: WrapType.wrap),
                                dropdownHeight: 300,
                                optionTextStyle: const TextStyle(fontSize: 16),
                                selectedOptionIcon:
                                    const Icon(Icons.check_circle),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),

                            //second dropdown button

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15),
                              child: MultiSelectDropDown(
                                fieldBackgroundColor:
                                    Colors.white.withOpacity(.5),
                                hint: 'Lats',
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                showClearIcon: true,
                                onOptionSelected: (options) {
                                  selectedLatsOptions = [];
                                  options.forEach((element) {
                                    selectedLatsOptions.add(element.label);
                                  });

                                  debugPrint(selectedLatsOptions.first);
                                },
                                options: const <ValueItem>[
                                  ValueItem(label: 'Deadlift', value: '1'),
                                  ValueItem(label: 'Rack pulls', value: '2'),
                                  ValueItem(
                                      label: 'Wide barbell row', value: '3'),
                                  ValueItem(
                                      label: 'Dumbbell bent over', value: '4'),
                                  ValueItem(label: 'Pull ups', value: '5'),
                                  ValueItem(label: 'T-Bar', value: '6'),
                                  ValueItem(label: 'Seated row', value: '7'),
                                  ValueItem(
                                      label: 'Single Arm Smith machine ',
                                      value: '8'),
                                  ValueItem(
                                      label: 'Lats pull down', value: '9'),
                                  ValueItem(
                                      label: 'Single-Arm Dumbbell Row',
                                      value: '10'),
                                  ValueItem(
                                      label: 'Chest-Supported Row',
                                      value: '11'),
                                  ValueItem(
                                      label: 'Smith machine bent over row',
                                      value: '12'),
                                  ValueItem(label: 'Super set', value: '13'),
                                ],
                                maxItems: 5,
                                selectionType: SelectionType.multi,
                                chipConfig:
                                    const ChipConfig(wrapType: WrapType.wrap),
                                dropdownHeight: 300,
                                optionTextStyle: const TextStyle(fontSize: 16),
                                selectedOptionIcon:
                                    const Icon(Icons.check_circle),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),

                            //third dropdown button

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15),
                              child: MultiSelectDropDown(
                                fieldBackgroundColor:
                                    Colors.white.withOpacity(.5),
                                hint: 'Shoulder',
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                showClearIcon: true,
                                onOptionSelected: (options) {
                                  selectedShoulderOptions = [];
                                  options.forEach((element) {
                                    selectedShoulderOptions.add(element.label);
                                  });
                                  debugPrint(selectedShoulderOptions.first);
                                },
                                options: const <ValueItem>[
                                  ValueItem(
                                      label: 'Dumbbell front raise',
                                      value: '1'),
                                  ValueItem(
                                      label: 'Dumbbell lateral raise',
                                      value: '2'),
                                  ValueItem(
                                      label: 'Dumbbell shoulder press',
                                      value: '3'),
                                  ValueItem(label: 'Lateral raise', value: '4'),
                                  ValueItem(label: 'Arnold press', value: '5'),
                                  ValueItem(
                                      label: 'Overhead press', value: '6'),
                                  ValueItem(label: 'Face pull', value: '7'),
                                  ValueItem(label: 'Reverse flye', value: '8'),
                                  ValueItem(
                                      label: 'Dumbbell shoulder shrugs',
                                      value: '9'),
                                  ValueItem(label: 'Push up', value: '10'),
                                  ValueItem(
                                      label: 'Barbell overhead Carry',
                                      value: '11'),
                                  ValueItem(
                                      label: 'One arm dumbbell swing',
                                      value: '12'),
                                  ValueItem(label: 'Super set', value: '13'),
                                ],
                                maxItems: 5,
                                selectionType: SelectionType.multi,
                                chipConfig:
                                    const ChipConfig(wrapType: WrapType.wrap),
                                dropdownHeight: 300,
                                optionTextStyle: const TextStyle(fontSize: 16),
                                selectedOptionIcon:
                                    const Icon(Icons.check_circle),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),

                            //fourth dropdown button

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15),
                              child: MultiSelectDropDown(
                                fieldBackgroundColor:
                                    Colors.white.withOpacity(.5),
                                hint: 'Arms',
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                showClearIcon: true,
                                onOptionSelected: (options) {
                                  selectedArmsOptions = [];
                                  options.forEach((element) {
                                    selectedArmsOptions.add(element.label);
                                  });
                                  debugPrint(selectedArmsOptions.first);
                                },
                                options: const <ValueItem>[
                                  ValueItem(label: 'Biceps curl', value: '1'),
                                  ValueItem(label: 'Hammer curl', value: '2'),
                                  ValueItem(
                                      label: 'Close grip pin pressy',
                                      value: '3'),
                                  ValueItem(label: 'Wide Curl', value: '4'),
                                  ValueItem(label: 'Barbell curl', value: '5'),
                                  ValueItem(
                                      label: 'Concentration curl', value: '6'),
                                  ValueItem(label: 'Drag pushdown', value: '7'),
                                  ValueItem(
                                      label:
                                          'overhead triceps extension single',
                                      value: '8'),
                                  ValueItem(
                                      label: 'Triceps kickback', value: '9'),
                                  ValueItem(
                                      label: 'Lying triceps extension',
                                      value: '10'),
                                  ValueItem(
                                      label:
                                          'overhead triceps extension double',
                                      value: '11'),
                                  ValueItem(
                                      label: 'Drag pushdown rope', value: '12'),
                                  ValueItem(label: 'Super set', value: '13'),
                                ],
                                maxItems: 5,
                                selectionType: SelectionType.multi,
                                chipConfig:
                                    const ChipConfig(wrapType: WrapType.wrap),
                                dropdownHeight: 300,
                                optionTextStyle: const TextStyle(fontSize: 16),
                                selectedOptionIcon:
                                    const Icon(Icons.check_circle),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 200),
                            ),
                            const SizedBox(
                              height: 25,
                            ),

                            //fifth dropdown

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15),
                              child: MultiSelectDropDown(
                                fieldBackgroundColor:
                                    Colors.white.withOpacity(.5),
                                hint: 'Abs',
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                showClearIcon: true,
                                onOptionSelected: (options) {
                                  selectedAbsOptions = [];
                                  options.forEach((element) {
                                    selectedAbsOptions.add(element.label);
                                  });
                                  debugPrint(selectedAbsOptions.first);
                                },
                                options: const <ValueItem>[
                                  ValueItem(
                                      label: 'Russian twists', value: '1'),
                                  ValueItem(
                                      label: 'Oblique crunch', value: '2'),
                                  ValueItem(label: 'Leg lower', value: '3'),
                                  ValueItem(
                                      label: 'Side plank dips', value: '4'),
                                  ValueItem(
                                      label: 'Leg rise hangging', value: '5'),
                                  ValueItem(label: 'Heel tap', value: '6'),
                                  ValueItem(label: 'Plank', value: '7'),
                                  ValueItem(
                                      label: 'Mountain climbers', value: '8'),
                                  ValueItem(
                                      label: 'Bicycle crunch', value: '9'),
                                  ValueItem(
                                      label: 'Reverse crunch', value: '10'),
                                  ValueItem(label: 'Hollow hold', value: '11'),
                                  ValueItem(
                                      label: 'Barbell rollout', value: '12'),
                                  ValueItem(label: 'Super set', value: '13'),
                                ],
                                maxItems: 5,
                                selectionType: SelectionType.multi,
                                chipConfig:
                                    const ChipConfig(wrapType: WrapType.wrap),
                                dropdownHeight: 300,
                                optionTextStyle: const TextStyle(fontSize: 16),
                                selectedOptionIcon:
                                    const Icon(Icons.check_circle),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),

                            //fifth dropdown

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 15),
                              child: MultiSelectDropDown(
                                fieldBackgroundColor:
                                    Colors.white.withOpacity(.5),
                                hint: 'Leg',
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                showClearIcon: true,
                                onOptionSelected: (options) {
                                  selectedLegOptions = [];
                                  options.forEach((element) {
                                    selectedLegOptions.add(element.label);
                                  });
                                  debugPrint(selectedLegOptions.first);
                                },
                                options: const <ValueItem>[
                                  ValueItem(label: 'Squat', value: '1'),
                                  ValueItem(label: 'Lunges', value: '2'),
                                  ValueItem(label: 'Deadlift', value: '3'),
                                  ValueItem(label: 'Leg press', value: '4'),
                                  ValueItem(
                                      label: 'Standing calf raise', value: '5'),
                                  ValueItem(label: 'Leg extension', value: '6'),
                                  ValueItem(label: 'Leg curl', value: '7'),
                                  ValueItem(
                                      label: 'Bulgarian split squat',
                                      value: '8'),
                                  ValueItem(label: 'Front squat', value: '9'),
                                  ValueItem(label: 'Pause squat', value: '10'),
                                  ValueItem(label: 'Sumo squat', value: '11'),
                                  ValueItem(label: 'Hip thrust', value: '12'),
                                  ValueItem(label: 'Super set', value: '13'),
                                ],
                                maxItems: 5,
                                selectionType: SelectionType.multi,
                                chipConfig:
                                    const ChipConfig(wrapType: WrapType.wrap),
                                dropdownHeight: 300,
                                optionTextStyle: const TextStyle(fontSize: 16),
                                selectedOptionIcon:
                                    const Icon(Icons.check_circle),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, left: 170),
                              child: TextButton(
                                  onPressed: () {
                                    if (dropdownformKey.currentState!
                                        .validate()) {
                                      if (selectedChestOptions.isEmpty ||
                                          selectedLatsOptions.isEmpty ||
                                          selectedShoulderOptions.isEmpty ||
                                          selectedArmsOptions.isEmpty ||
                                          selectedAbsOptions.isEmpty ||
                                          selectedLegOptions.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Please select at least one option in each dropdown.'),
                                          ),
                                        );
                                      } else {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ScreenFormThree(
                                              titleform: widget.titleform,
                                              clientWO: addClientwokout(),
                                            ),
                                          ),
                                        );
                                      }
                                    }
                                  },
                                  child: const Text(
                                    'Next>>',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ClientModelM addClientwokout() {
    final clientworkout = Workouts(
        selectedChestOptions,
        selectedLatsOptions,
        selectedShoulderOptions,
        selectedArmsOptions,
        selectedAbsOptions,
        selectedLegOptions);
    clientModelM.workoutsobj = clientworkout;
    return clientModelM;
  }
}
