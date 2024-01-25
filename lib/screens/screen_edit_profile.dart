import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:personal_training_app/models/client_model.dart';
import 'package:personal_training_app/screens/screen_edit_workouts.dart';

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
    clientModelM = widget.clientdata;
    image = XFile(widget.clientdata.image);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

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

    return Scaffold(
        appBar: AppBar(
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
                  image: AssetImage(
                      'assets/images/wp10467299-c-bum-wallpapers.jpg'),
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
                                            onPressed: () async {
                                              final ImagePicker picker =
                                                  ImagePicker();
                                              var editimage =
                                                  await picker.pickImage(
                                                      source:
                                                          ImageSource.gallery);
                                              setState(() {
                                                image = editimage;
                                              });
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
                                    child: TextFormField(
                                      controller: enamecontroller,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      keyboardType: TextInputType.name,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        hintText: 'name',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.4),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your Name';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: TextFormField(
                                      controller: eagecontroller,
                                      keyboardType: TextInputType.number,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        hintText: 'Age',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.4),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Age';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: TextFormField(
                                      controller: eplacecontroller,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      keyboardType: TextInputType.name,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        hintText: 'Place',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.4),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Place';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: TextFormField(
                                      controller: ephonecontroller,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      keyboardType: TextInputType.number,
                                      maxLength: 10,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        hintText: 'Phone Number',
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.4),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Phone number';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, top: 8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller: eheightcontroller,
                                            keyboardType: TextInputType.number,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  borderSide: BorderSide.none),
                                              hintText: 'Height',
                                              filled: true,
                                              fillColor:
                                                  Colors.white.withOpacity(.4),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Enter Height';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        Expanded(
                                          child: TextFormField(
                                            controller: eweigthcontroller,
                                            keyboardType: TextInputType.number,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  borderSide: BorderSide.none),
                                              hintText: 'Weight',
                                              filled: true,
                                              fillColor:
                                                  Colors.white.withOpacity(.4),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Enter Weight';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
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
                                        hintText: selectedBlood,
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
                                    child: TextFormField(
                                      controller: eplancontroller,
                                      keyboardType: TextInputType.number,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        hintText: 'Plan',
                                        hintStyle: const TextStyle(
                                            color: Colors.black38),
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(.4),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Plan';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
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
    clientModelM.plan = eplancontroller.text.trim();
    clientModelM.image = image!.path;
    return clientModelM;
  }
}
