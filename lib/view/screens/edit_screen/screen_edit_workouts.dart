// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:personal_training_app/model/workouts.dart';
import 'package:personal_training_app/view/screens/edit_screen/screen_edit_diet.dart';

class ScreenEditWorkouts extends StatefulWidget {
  final ClientModelM clieteditdt;
  final int index;
  final String categorytitle;
  final String oldCategory;
  const ScreenEditWorkouts(
      {super.key,
      required this.clieteditdt,
      required this.index,
      required this.categorytitle,
      required this.oldCategory});

  @override
  State<ScreenEditWorkouts> createState() => _ScreenEditWorkoutsState();
}

class _ScreenEditWorkoutsState extends State<ScreenEditWorkouts> {
  final GlobalKey<FormState> editdropdownformKey = GlobalKey<FormState>();
  List<String> selectedChestOptions = [];
  List<String> selectedLatsOptions = [];
  List<String> selectedShoulderOptions = [];
  List<String> selectedArmsOptions = [];
  List<String> selectedAbsOptions = [];
  List<String> selectedLegOptions = [];
  late ClientModelM editclientModelM;
  @override
  void initState() {
    super.initState();
    editclientModelM = widget.clieteditdt;
    selectedChestOptions = widget.clieteditdt.workoutsobj!.chest;
    selectedLatsOptions = widget.clieteditdt.workoutsobj!.lats;
    selectedArmsOptions = widget.clieteditdt.workoutsobj!.arms;
    selectedShoulderOptions = widget.clieteditdt.workoutsobj!.shoulder;
    selectedAbsOptions = widget.clieteditdt.workoutsobj!.abs;
    selectedLegOptions = widget.clieteditdt.workoutsobj!.leg;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        title: const Text(
          'Edit Workouts',
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
                  width: 310,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0),
                      borderRadius: BorderRadius.circular(8)),
                  child: Form(
                    key: editdropdownformKey,
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
                                selectedOptions: selectedChestOptions
                                    .map(
                                      (e) => ValueItem(label: e, value: e),
                                    )
                                    .toList(),
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
                                      label: 'Incline Bench press',
                                      value: 'Incline Bench press'),
                                  ValueItem(
                                      label: 'Crossover decline',
                                      value: 'Crossover decline'),
                                  ValueItem(
                                      label: 'Dumbell fly',
                                      value: 'Dumbell fly'),
                                  ValueItem(
                                      label: 'Butterfly', value: 'Butterfly'),
                                  ValueItem(
                                      label: 'Crossover', value: 'Crossover'),
                                  ValueItem(
                                      label: 'Incline Dumbell press',
                                      value: 'Incline Dumbell press'),
                                  ValueItem(
                                      label: 'Pullover', value: 'Pullover'),
                                  ValueItem(label: 'Pushup', value: 'Pushup'),
                                  ValueItem(
                                      label: 'Close grip bench press',
                                      value: 'Close grip bench press'),
                                  ValueItem(
                                      label: 'Cable fly', value: 'Cable fly'),
                                  ValueItem(
                                      label: 'Chest Squeeze Push-Ups',
                                      value: 'Chest Squeeze Push-Ups'),
                                  ValueItem(
                                      label: 'Close-Grip Bench Press',
                                      value: 'Close-Grip Bench Press'),
                                  ValueItem(
                                      label: 'Super set', value: 'Super set'),
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
                                selectedOptions: selectedLatsOptions
                                    .map((e) => ValueItem(label: e, value: e))
                                    .toList(),
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
                                  ValueItem(
                                      label: 'Deadlift', value: 'Deadlift'),
                                  ValueItem(
                                      label: 'Rack pulls', value: 'Rack pulls'),
                                  ValueItem(
                                      label: 'Wide barbell row',
                                      value: 'Wide barbell row'),
                                  ValueItem(
                                      label: 'Dumbbell bent over',
                                      value: 'Dumbbell bent over'),
                                  ValueItem(
                                      label: 'Pull ups', value: 'Pull ups'),
                                  ValueItem(label: 'T-Bar', value: 'T-Bar'),
                                  ValueItem(
                                      label: 'Seated row', value: 'Seated row'),
                                  ValueItem(
                                      label: 'Single Arm Smith machine ',
                                      value: 'Single Arm Smith machine '),
                                  ValueItem(
                                      label: 'Lats pull down',
                                      value: 'Lats pull down'),
                                  ValueItem(
                                      label: 'Single-Arm Dumbbell Row',
                                      value: 'Single-Arm Dumbbell Row'),
                                  ValueItem(
                                      label: 'Hyper extension',
                                      value: 'Hyper extension'),
                                  ValueItem(
                                      label: 'Smith machine bent over row',
                                      value: 'Smith machine bent over row'),
                                  ValueItem(
                                      label: 'Super set', value: 'Super set'),
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
                                selectedOptions: selectedShoulderOptions
                                    .map((e) => ValueItem(label: e, value: e))
                                    .toList(),
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
                                      value: 'Dumbbell front raise'),
                                  ValueItem(
                                      label: 'Dumbbell lateral raise',
                                      value: 'Dumbbell lateral raise'),
                                  ValueItem(
                                      label: 'Dumbbell shoulder press',
                                      value: 'Dumbbell shoulder press'),
                                  ValueItem(
                                      label: 'Lateral raise',
                                      value: 'Lateral raise'),
                                  ValueItem(
                                      label: 'Arnold press',
                                      value: 'Arnold press'),
                                  ValueItem(
                                      label: 'Overhead press',
                                      value: 'Overhead press'),
                                  ValueItem(
                                      label: 'Face pull', value: 'Face pull'),
                                  ValueItem(
                                      label: 'Reverse flye',
                                      value: 'Reverse flye'),
                                  ValueItem(
                                      label: 'Dumbbell shoulder shrugs',
                                      value: 'Dumbbell shoulder shrugs'),
                                  ValueItem(label: 'Push up', value: 'Push up'),
                                  ValueItem(
                                      label: 'Barbell overhead Carry',
                                      value: 'Barbell overhead Carry'),
                                  ValueItem(
                                      label: 'One arm dumbbell swing',
                                      value: 'One arm dumbbell swing'),
                                  ValueItem(
                                      label: 'Super set', value: 'Super set'),
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
                                selectedOptions: selectedArmsOptions
                                    .map((e) => ValueItem(label: e, value: e))
                                    .toList(),
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
                                  ValueItem(
                                      label: 'Biceps curl',
                                      value: 'Biceps curl'),
                                  ValueItem(
                                      label: 'Hammer curl',
                                      value: 'Hammer curl'),
                                  ValueItem(
                                      label: 'Close grip pin pressy',
                                      value: 'Close grip pin pressy'),
                                  ValueItem(
                                      label: 'Wide Curl', value: 'Wide Curl'),
                                  ValueItem(
                                      label: 'Barbell curl',
                                      value: 'Barbell curl'),
                                  ValueItem(
                                      label: 'Concentration curl',
                                      value: 'Concentration curl'),
                                  ValueItem(
                                      label: 'Drag pushdown',
                                      value: 'Drag pushdown'),
                                  ValueItem(
                                      label:
                                          'overhead triceps extension single',
                                      value:
                                          'overhead triceps extension single'),
                                  ValueItem(
                                      label: 'Triceps kickback',
                                      value: 'Triceps kickback'),
                                  ValueItem(
                                      label: 'Lying triceps extension',
                                      value: 'Lying triceps extension'),
                                  ValueItem(
                                      label:
                                          'overhead triceps extension double',
                                      value:
                                          'overhead triceps extension double'),
                                  ValueItem(
                                      label: 'Drag pushdown rope',
                                      value: 'Drag pushdown rope'),
                                  ValueItem(
                                      label: 'Super set', value: 'Super set'),
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
                                selectedOptions: selectedAbsOptions
                                    .map((e) => ValueItem(label: e, value: e))
                                    .toList(),
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
                                      label: 'Russian twists',
                                      value: 'Russian twists'),
                                  ValueItem(
                                      label: 'Oblique crunch',
                                      value: 'Oblique crunch'),
                                  ValueItem(
                                      label: 'Leg lower', value: 'Leg lower'),
                                  ValueItem(
                                      label: 'Side plank dips',
                                      value: 'Side plank dips'),
                                  ValueItem(
                                      label: 'Leg rise hangging',
                                      value: 'Leg rise hangging'),
                                  ValueItem(
                                      label: 'Heel tap', value: 'Heel tap'),
                                  ValueItem(
                                    label: 'Plank',
                                    value: 'Plank',
                                  ),
                                  ValueItem(
                                      label: 'Mountain climbers',
                                      value: 'Mountain climbers'),
                                  ValueItem(
                                      label: 'Bicycle crunch',
                                      value: 'Bicycle crunch'),
                                  ValueItem(
                                      label: 'Reverse crunch',
                                      value: 'Reverse crunch'),
                                  ValueItem(
                                      label: 'Hollow hold',
                                      value: 'Hollow hold'),
                                  ValueItem(
                                      label: 'Barbell rollout',
                                      value: 'Barbell rollout'),
                                  ValueItem(
                                      label: 'Super set', value: 'Super set'),
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
                                selectedOptions: selectedLegOptions
                                    .map((e) => ValueItem(label: e, value: e))
                                    .toList(),
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
                                  ValueItem(label: 'Squat', value: 'Squat'),
                                  ValueItem(label: 'Lunges', value: 'Lunges'),
                                  ValueItem(
                                      label: 'Deadlift', value: 'Deadlift'),
                                  ValueItem(
                                      label: 'Leg press', value: 'Leg press'),
                                  ValueItem(
                                      label: 'Standing calf raise',
                                      value: 'Standing calf raise'),
                                  ValueItem(
                                      label: 'Leg extension',
                                      value: 'Leg extension'),
                                  ValueItem(
                                      label: 'Leg curl', value: 'Leg curl'),
                                  ValueItem(
                                      label: 'Bulgarian split squat',
                                      value: 'Bulgarian split squat'),
                                  ValueItem(
                                      label: 'Front squat',
                                      value: 'Front squat'),
                                  ValueItem(label: 'V squat', value: 'V squat'),
                                  ValueItem(
                                      label: 'Hack squat', value: 'Hack squat'),
                                  ValueItem(
                                      label: 'Hip thrust', value: 'Hip thrust'),
                                  ValueItem(
                                      label: 'Super set', value: 'Super set'),
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
                                    if (editdropdownformKey.currentState!
                                        .validate()) {
                                      if (selectedChestOptions.isEmpty ||
                                          selectedLatsOptions.isEmpty ||
                                          selectedShoulderOptions.isEmpty ||
                                          selectedArmsOptions.isEmpty ||
                                          selectedAbsOptions.isEmpty ||
                                          selectedLegOptions.isEmpty) {
                                        addeditClientwokout();
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
                                                ScreenEditDiet(
                                              clienteditWO:
                                                  addeditClientwokout(),
                                              index: widget.index,
                                              categorytitle:
                                                  widget.categorytitle,
                                              oldCategory: widget.oldCategory,
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

  ClientModelM addeditClientwokout() {
    final clientworkout = Workouts(
        selectedChestOptions,
        selectedLatsOptions,
        selectedShoulderOptions,
        selectedArmsOptions,
        selectedArmsOptions,
        selectedLegOptions);
    editclientModelM.workoutsobj = clientworkout;
    return editclientModelM;
  }
}
