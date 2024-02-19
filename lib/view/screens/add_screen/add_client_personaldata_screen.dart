// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:personal_training_app/model/client_model.dart';

import 'package:personal_training_app/view/screens/add_screen/add_client_workout_screen.dart';
import 'dart:io';

import 'package:personal_training_app/widgets/custom_textfield.dart';

class ScreenForm extends StatefulWidget {
  final String? titleform;
  const ScreenForm({super.key, required this.titleform});

  @override
  State<ScreenForm> createState() => _ScreenFormState();
}

class _ScreenFormState extends State<ScreenForm> {
  XFile? image;
  final namecontroller = TextEditingController();
  final agecontroller = TextEditingController();
  final placecontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final heightcontroller = TextEditingController();
  final weigthcontroller = TextEditingController();
  final plancontroller = TextEditingController();
  String selectedBlood = 'blood';
  String selectedcategory = 'Category';
  String initialfee = '0';
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final ImagePicker picker = ImagePicker();

    List<String> bloodOptions = [
      'A+ve',
      'A-ve',
      'B+ve',
      'B-ve',
      'AB+ve',
      'AB-ve',
      'O+ve',
      'O-ve'
    ];
    List<String> categoryOptions = [
      'Muscle Building',
      'Fat Lose',
      'Core Fitness'
    ];

    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        //   title: Text(
        //     widget.titleform ?? '',
        //     style: const TextStyle(
        //         fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        //   ),
        //   centerTitle: true,
        // ),
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage('assets/images/Chris Bumstead CBUM.jpeg'),
              fit: BoxFit.cover)),
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 310,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0),
                        borderRadius: BorderRadius.circular(8)),
                    child: Form(
                        key: formKey,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  children: [
                                    image != null
                                        ? CircleAvatar(
                                            backgroundImage:
                                                FileImage(File(image!.path)),
                                            maxRadius: 60,
                                          )
                                        : const CircleAvatar(
                                            maxRadius: 60,
                                            backgroundImage: AssetImage(
                                                'assets/images/user-not-found.png'),
                                          ),
                                    Positioned(
                                      left: 60,
                                      top: 80,
                                      child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return Center(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    width: 130,
                                                    height: 100,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        IconButton(
                                                            onPressed:
                                                                () async {
                                                              var editimage =
                                                                  await picker
                                                                      .pickImage(
                                                                          source:
                                                                              ImageSource.gallery);
                                                              setState(() {
                                                                image =
                                                                    editimage;
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: const Icon(
                                                              Icons.image,
                                                              size: 40,
                                                              color:
                                                                  Colors.white,
                                                            )),
                                                        IconButton(
                                                            onPressed:
                                                                () async {
                                                              var editimage =
                                                                  await picker
                                                                      .pickImage(
                                                                          source:
                                                                              ImageSource.camera);
                                                              setState(() {
                                                                image =
                                                                    editimage;
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: const Icon(
                                                              Icons
                                                                  .camera_alt_outlined,
                                                              size: 40,
                                                              color:
                                                                  Colors.white,
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          icon: const Icon(
                                            Icons.camera_alt_outlined,
                                            size: 40,
                                          )),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 20),
                                  child: Customtextfield(
                                    controller: namecontroller,
                                    keyboardType: TextInputType.name,
                                    labelText: 'Name',
                                    valiator: 'Please enter Client Name',
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: Customtextfield(
                                      controller: agecontroller,
                                      keyboardType: TextInputType.number,
                                      labelText: 'Age',
                                      valiator: 'Please enter Client Age',
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: Customtextfield(
                                      controller: placecontroller,
                                      keyboardType: TextInputType.name,
                                      labelText: 'Place',
                                      valiator: 'Please enter Client Place',
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: Custometextphone(
                                      controller: phonecontroller,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 8),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Customtextfield(
                                        controller: heightcontroller,
                                        keyboardType: TextInputType.number,
                                        labelText: 'Height',
                                        maxlength: 3,
                                        valiator: 'Please enter Client Height',
                                      )),
                                      const SizedBox(width: 16),
                                      Expanded(
                                          child: Customtextfield(
                                        controller: weigthcontroller,
                                        keyboardType: TextInputType.number,
                                        labelText: 'Weight',
                                        maxlength: 4,
                                        valiator: 'Please enter Client Weight',
                                      )),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 8),
                                  child: DropdownButtonFormField<String>(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    onChanged: (String? newValue) {
                                      if (newValue != null) {
                                        setState(() {
                                          selectedBlood = newValue;
                                        });
                                      }
                                    },
                                    items: bloodOptions.map((String bloodType) {
                                      return DropdownMenuItem<String>(
                                        value: bloodType,
                                        child: Text(bloodType),
                                      );
                                    }).toList(),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none,
                                      ),
                                      labelText: selectedBlood,
                                      labelStyle:
                                          const TextStyle(color: Colors.white),
                                      filled: true,
                                      fillColor: Colors.white.withOpacity(.4),
                                    ),
                                    validator: (value) {
                                      if (selectedBlood == 'blood') {
                                        return 'Please choose Blood';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 8),
                                  child: DropdownButtonFormField<String>(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    onChanged: (String? newvalue) {
                                      if (newvalue != null) {
                                        setState(() {
                                          selectedcategory = newvalue;
                                        });
                                      }
                                    },
                                    items: categoryOptions
                                        .map((String categorytype) {
                                      return DropdownMenuItem<String>(
                                        value: categorytype,
                                        child: Text(categorytype),
                                      );
                                    }).toList(),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none,
                                      ),
                                      labelText: selectedcategory,
                                      labelStyle:
                                          const TextStyle(color: Colors.white),
                                      filled: true,
                                      fillColor: Colors.white.withOpacity(.4),
                                    ),
                                    validator: (value) {
                                      if (selectedcategory == 'Category') {
                                        return 'Please select the Category';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: Customtextfield(
                                      controller: plancontroller,
                                      keyboardType: TextInputType.number,
                                      labelText: 'Plan',
                                      maxlength: 3,
                                      valiator: 'Please enter the Plan',
                                    )),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 230, top: 20),
                                  child: TextButton(
                                      onPressed: () {
                                        if (formKey.currentState!.validate() &&
                                            image != null) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ScreenFormTwo(
                                                  clietdt: addclientbutt(),
                                                ),
                                              ));
                                        } else {
                                          noImage();
                                        }
                                      },
                                      child: const Text(
                                        "Next>>",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ],
                            ),
                          ),
                        )))
              ],
            ),
          ),
        ),
      ),
    ));
  }

  ClientModelM addclientbutt() {
    final String name = namecontroller.text.trim();
    final String age = agecontroller.text.trim();
    final String phone = phonecontroller.text.trim();
    final String place = placecontroller.text.trim();
    final String height = heightcontroller.text.trim();
    final String weight = weigthcontroller.text.trim();
    final String blood = selectedBlood;
    final String plan = plancontroller.text.trim();
    final String cimage = image!.path;
    final String category = selectedcategory;
    if (int.parse(plan) <= 3) {
      initialfee = (int.parse(plan) * 6000).toString();
    } else if (int.parse(plan) > 3 && int.parse(plan) <= 6) {
      initialfee = (int.parse(plan) * 5500).toString();
    } else if (int.parse(plan) > 6 && int.parse(plan) <= 9) {
      initialfee = (int.parse(plan) * 5000).toString();
    } else {
      initialfee = (int.parse(plan) * 4500).toString();
    }

    print(category);
    final clientPersonal = ClientModelM(
        id: DateTime.now().toString(),
        name: name,
        age: age,
        place: place,
        phone: phone,
        height: height,
        weight: weight,
        blood: blood,
        plan: plan,
        image: cimage,
        category: category,
        pendingfee: initialfee);
    return clientPersonal;
  }

  noImage() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.all(8),
        backgroundColor: Colors.red,
        content: Text(
          'Please add image',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        )));
  }
}
