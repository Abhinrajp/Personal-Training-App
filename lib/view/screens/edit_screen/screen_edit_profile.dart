// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:personal_training_app/view/screens/edit_screen/screen_edit_workouts.dart';
import 'package:personal_training_app/widgets/custom_textfield.dart';

class ScreenEditProfile extends StatefulWidget {
  final ClientModelM clientdata;
  final int index;
  final String categorytitle;
  const ScreenEditProfile(
      {super.key,
      required this.clientdata,
      required this.index,
      required this.categorytitle});

  @override
  State<ScreenEditProfile> createState() => _ScreenEditProfileState();
}

class _ScreenEditProfileState extends State<ScreenEditProfile> {
  XFile? image;
  final enamecontroller = TextEditingController();
  final eagecontroller = TextEditingController();
  final eplacecontroller = TextEditingController();
  final ephonecontroller = TextEditingController();
  final eheightcontroller = TextEditingController();
  final eweigthcontroller = TextEditingController();
  final eplancontroller = TextEditingController();
  late ClientModelM clientModelM;
  String selectedBlood = 'blood';
  String selectedcategory = 'Category';
  String? oldCategory;

  @override
  void initState() {
    enamecontroller.text = widget.clientdata.name;
    eagecontroller.text = widget.clientdata.age;
    eplacecontroller.text = widget.clientdata.place;
    ephonecontroller.text = widget.clientdata.phone;
    eheightcontroller.text = widget.clientdata.height;
    eweigthcontroller.text = widget.clientdata.weight;
    eplancontroller.text = widget.clientdata.plan;
    selectedBlood = widget.clientdata.blood;
    selectedcategory = widget.clientdata.category;
    clientModelM = widget.clientdata;
    image = XFile(widget.clientdata.image);
    oldCategory = widget.clientdata.category;
    super.initState();
  }

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
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          backgroundColor: const Color.fromARGB(255, 61, 61, 61),
          title: const Text(
            'Edit profile',
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
                  image: AssetImage('assets/images/Chris Bumstead CBUM.jpeg'),
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
                          key: formKey,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                                                  .circular(
                                                                      20)),
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
                                                                color: Colors
                                                                    .white,
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
                                                                color: Colors
                                                                    .white,
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
                                      controller: enamecontroller,
                                      keyboardType: TextInputType.name,
                                      labelText: 'Name',
                                      valiator: 'Please enter Client Name',
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: eagecontroller,
                                        keyboardType: TextInputType.number,
                                        labelText: 'Age',
                                        valiator: 'Please enter Client Age',
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 8),
                                      child: Customtextfield(
                                        controller: eplacecontroller,
                                        keyboardType: TextInputType.name,
                                        labelText: 'Place',
                                        valiator: 'Please enter Client Place',
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: Custometextphone(
                                        controller: ephonecontroller),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Customtextfield(
                                          controller: eheightcontroller,
                                          keyboardType: TextInputType.number,
                                          labelText: 'Height',
                                          maxlength: 3,
                                          valiator:
                                              'Please enter Client Height',
                                        )),
                                        const SizedBox(width: 16),
                                        Expanded(
                                            child: Customtextfield(
                                          controller: eweigthcontroller,
                                          keyboardType: TextInputType.number,
                                          labelText: 'Weight',
                                          maxlength: 4,
                                          valiator:
                                              'Please enter Client Weight',
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
                                      items:
                                          bloodOptions.map((String bloodType) {
                                        return DropdownMenuItem<String>(
                                          value: bloodType,
                                          child: Text(bloodType),
                                        );
                                      }).toList(),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        ),
                                        labelText: selectedBlood,
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
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        ),
                                        labelText: selectedcategory,
                                        labelStyle: const TextStyle(
                                            color: Colors.white),
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
                                        controller: eplancontroller,
                                        keyboardType: TextInputType.number,
                                        labelText: 'Plan',
                                        maxlength: 3,
                                        valiator: 'Please enter the Plan',
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 230, top: 20),
                                    child: TextButton(
                                        onPressed: () {
                                          editclientbutt();
                                          if (formKey.currentState!
                                              .validate()) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ScreenEditWorkouts(
                                                  clieteditdt: editclientbutt(),
                                                  index: widget.index,
                                                  categorytitle:
                                                      widget.categorytitle,
                                                  oldCategory: oldCategory!,
                                                ),
                                              ),
                                            );
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
        ));
  }

  ClientModelM editclientbutt() {
    clientModelM.name = enamecontroller.text.trim();
    clientModelM.age = eagecontroller.text.trim();
    clientModelM.phone = ephonecontroller.text.trim();
    clientModelM.place = eplacecontroller.text.trim();
    clientModelM.height = eheightcontroller.text.trim();
    clientModelM.weight = eweigthcontroller.text.trim();
    clientModelM.blood = selectedBlood;
    clientModelM.category = selectedcategory;
    clientModelM.plan = eplancontroller.text.trim();
    clientModelM.image = image!.path;
    return clientModelM;
  }
}
