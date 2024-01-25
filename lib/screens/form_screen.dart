import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:personal_training_app/models/client_model.dart';
import 'package:personal_training_app/screens/form_screen2.dart';
import 'dart:io';

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
          title: Text(
            widget.titleform ?? '',
            style: const TextStyle(
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
                                      controller: namecontroller,
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
                                      controller: agecontroller,
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
                                      controller: placecontroller,
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
                                      controller: phonecontroller,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      keyboardType: TextInputType.number,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      maxLength: 10,
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
                                            controller: heightcontroller,
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
                                            controller: weigthcontroller,
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
                                      controller: plancontroller,
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
                                          if (formKey.currentState!
                                                  .validate() &&
                                              image != null) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ScreenFormTwo(
                                                    titleform:
                                                        widget.titleform ?? '',
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
        image: cimage);
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
