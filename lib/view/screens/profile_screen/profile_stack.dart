// ignore_for_file: unnecessary_cast, use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:personal_training_app/controller/db_contoller/dbfuntions.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:personal_training_app/widgets/custom_textfield.dart';

class ScreenProfileStack extends StatefulWidget {
  // final String category;
  // final int index;
  final ClientModelM clientdata;
  const ScreenProfileStack(
      {super.key,
      // required this.category,
      // required this.index,
      required this.clientdata});

  @override
  State<ScreenProfileStack> createState() => _ScreenProfileStackState();
}

class _ScreenProfileStackState extends State<ScreenProfileStack> {
  final String musclebuilding = 'Muscle Building';
  final String fatlose = 'Fat Lose';
  final String corefitness = 'Core Fitness';
  late XFile weekoneimage;
  late XFile weekimage;
  final camimagepicker = ImagePicker();
  final progresscontroll = TextEditingController();
  bool visble = false;
  int totalfee = 0;
  int? initialfee;
  @override
  void initState() {
    super.initState();
    weekoneimage = XFile(widget.clientdata.weekoneimage ?? '');
    weekimage = XFile(widget.clientdata.weekimage ?? '');
    progresscontroll.text = widget.clientdata.updates ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 209, 199, 199),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          spreadRadius: 4)
                    ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: Image(
                    image: FileImage(File(widget.clientdata.image)),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.black,
                          content: SizedBox(
                            width: 300,
                            height: 420,
                            child: Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Textforprofiledetails(
                                            detail: 'Name',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetails(
                                            detail: 'Age',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetails(
                                            detail: 'Place',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetails(
                                            detail: 'Height',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetails(
                                            detail: 'Weight',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetails(
                                            detail: 'Blood',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetails(
                                            detail: 'Plan',
                                          ),
                                          const SizedBox(height: 33),
                                          const Icon(
                                            Icons.call,
                                            color: Colors.grey,
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 13),
                                          Textforprofiledetailenter(
                                            detail:
                                                ':  ${widget.clientdata.name}',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetailenter(
                                            detail:
                                                ':  ${widget.clientdata.age}',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetailenter(
                                            detail:
                                                ':  ${widget.clientdata.place}',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetailenter(
                                            detail:
                                                ':  ${widget.clientdata.height} CM',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetailenter(
                                            detail:
                                                ':  ${widget.clientdata.weight} KG',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetailenter(
                                            detail:
                                                ':  ${widget.clientdata.blood}',
                                          ),
                                          const SizedBox(height: 13),
                                          Textforprofiledetailenter(
                                            detail:
                                                ':  ${widget.clientdata.height} Month',
                                          ),
                                          const SizedBox(height: 33),
                                          GestureDetector(
                                              onTap: () async {
                                                await FlutterPhoneDirectCaller
                                                    .callNumber(widget
                                                        .clientdata.phone);
                                              },
                                              child: Textforprofiledetailenter(
                                                detail:
                                                    ':  ${widget.clientdata.phone}',
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              spreadRadius: 4)
                        ],
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.clientdata.name,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.clientdata.age,
                                style: const TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.clientdata.category,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "${widget.clientdata.plan} Month",
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "${widget.clientdata.height} CM",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "${widget.clientdata.weight} KG",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Visibility(
                  visible: visble,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      fees(widget.clientdata.id),
                      IconButton(
                        onPressed: () {
                          feeAddAlert();
                        },
                        icon: const Icon(Icons.check),
                        iconSize: 35,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                    content: Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          spreadRadius: 4)
                                    ],
                                  ),
                                  height: 300,
                                  width: 200,
                                  child: Image(
                                    image: widget.clientdata.weekoneimage !=
                                            null
                                        ? FileImage(File(widget
                                                .clientdata.weekoneimage!))
                                            as ImageProvider<Object>
                                        : const AssetImage(
                                                'assets/images/user-not-found.png')
                                            as ImageProvider<Object>,
                                    fit: BoxFit.cover,
                                  ),
                                ));
                              },
                            );
                          },
                          child: Container(
                            height: 200,
                            width: 170,
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.grey,
                                      offset: Offset(2, 2),
                                      spreadRadius: 4)
                                ],
                                color: Color.fromARGB(255, 209, 199, 199),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              child: Image(
                                image: widget.clientdata.weekoneimage != null
                                    ? FileImage(File(
                                            widget.clientdata.weekoneimage!))
                                        as ImageProvider<Object>
                                    : const AssetImage(
                                            'assets/images/user-not-found.png')
                                        as ImageProvider<Object>,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 148,
                          child: IconButton(
                            onPressed: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        width: 130,
                                        height: 100,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            IconButton(
                                                onPressed: () async {
                                                  weekoneimage =
                                                      (await camimagepicker
                                                          .pickImage(
                                                              source: ImageSource
                                                                  .gallery))!;
                                                  widget.clientdata
                                                          .weekoneimage =
                                                      weekoneimage.path;
                                                  pogressimageadding();
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(
                                                  Icons.image,
                                                  size: 40,
                                                  color: Colors.white,
                                                )),
                                            IconButton(
                                                onPressed: () async {
                                                  weekoneimage =
                                                      (await camimagepicker
                                                          .pickImage(
                                                              source: ImageSource
                                                                  .camera))!;
                                                  widget.clientdata
                                                          .weekoneimage =
                                                      weekoneimage.path;
                                                  pogressimageadding();
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(
                                                  Icons.camera_alt_outlined,
                                                  size: 40,
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            icon: const Icon(
                              size: 35,
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                    content: Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          spreadRadius: 4)
                                    ],
                                  ),
                                  height: 300,
                                  width: 200,
                                  child: Image(
                                    image: widget.clientdata.weekimage != null
                                        ? FileImage(File(
                                                widget.clientdata.weekimage!))
                                            as ImageProvider<Object>
                                        : const AssetImage(
                                                'assets/images/user-not-found.png')
                                            as ImageProvider<Object>,
                                    fit: BoxFit.cover,
                                  ),
                                ));
                              },
                            );
                          },
                          child: Container(
                            height: 200,
                            width: 170,
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.grey,
                                      offset: Offset(2, 2),
                                      spreadRadius: 4)
                                ],
                                color: Color.fromARGB(255, 209, 199, 199),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              child: Image(
                                image: widget.clientdata.weekimage != null
                                    ? FileImage(
                                            File(widget.clientdata.weekimage!))
                                        as ImageProvider<Object>
                                    : const AssetImage(
                                            'assets/images/user-not-found.png')
                                        as ImageProvider<Object>,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 148,
                          child: IconButton(
                            onPressed: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        width: 130,
                                        height: 100,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            IconButton(
                                                onPressed: () async {
                                                  weekimage =
                                                      (await camimagepicker
                                                          .pickImage(
                                                              source: ImageSource
                                                                  .gallery))!;
                                                  widget.clientdata.weekimage =
                                                      weekimage.path;
                                                  pogressimageadding();
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(
                                                  Icons.image,
                                                  size: 40,
                                                  color: Colors.white,
                                                )),
                                            IconButton(
                                                onPressed: () async {
                                                  weekimage =
                                                      (await camimagepicker
                                                          .pickImage(
                                                              source: ImageSource
                                                                  .camera))!;
                                                  widget.clientdata.weekimage =
                                                      weekimage.path;
                                                  pogressimageadding();
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(
                                                  Icons.camera_alt_outlined,
                                                  size: 40,
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            icon: const Icon(
                              size: 35,
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 75),
                    child: Text(
                      'Week 0',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Week ${showweek(widget.clientdata.id)}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.grey,
                                offset: Offset(2, 2),
                                spreadRadius: 4)
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: Colors.white),
                      height: 200,
                      width: double.infinity,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 23, left: 7, right: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          textCapitalization: TextCapitalization.words,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                          controller: progresscontroll,
                          maxLines: 8,
                          onChanged: (value) {
                            widget.clientdata.updates = value;
                            if (widget.clientdata.category == musclebuilding) {
                              editClient(
                                  widget.clientdata.id, widget.clientdata);
                              getAllClient();
                            } else if (widget.clientdata.category == fatlose) {
                              editClientF(
                                  widget.clientdata.id, widget.clientdata);
                              getAllClientF();
                            } else {
                              editClientC(
                                  widget.clientdata.id, widget.clientdata);
                              getAllClientC();
                            }
                          },
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      top: 10,
                      child: Text(
                        'Updates',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  int showweek(String id) {
    DateTime joinedDate = DateTime.parse(id);
    DateTime currentDate = DateTime.now();
    int dayDiff = currentDate.difference(joinedDate).inDays;

    int weekDiff = (dayDiff / 7).ceil();

    return weekDiff;
  }

  Widget fees(String id) {
    DateTime joinedDate = DateTime.parse(id);
    DateTime currentDate = DateTime.now();
    int dayDiff = currentDate.difference(joinedDate).inDays;
    if (dayDiff != 0 && dayDiff % 30 == 0) {
      visble = true;
      return Text(
        'Fee pending ${(widget.clientdata.pendingfee)}',
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.red,
            shadows: [
              Shadow(color: Colors.grey, offset: Offset(2, 3), blurRadius: 4)
            ]),
      );
    }
    return const Text('');
  }

  feeAddAlert() {
    showDialog(
      useSafeArea: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.grey.shade100,
          content: const Text('Did you got the Payment ?',
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  shadows: [
                    Shadow(
                        blurRadius: 3, color: Colors.grey, offset: Offset(2, 2))
                  ])),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    int planvalue = int.parse(widget.clientdata.plan);
                    int currentfee = int.parse(widget.clientdata.pendingfee!);
                    if (planvalue < 3 && planvalue * 6000 >= 0) {
                      widget.clientdata.pendingfee =
                          (currentfee - 6000).toString();
                    } else if (planvalue > 3 &&
                        planvalue <= 6 &&
                        planvalue * 5500 >= 0) {
                      widget.clientdata.pendingfee =
                          (currentfee - 5500).toString();
                    } else if (planvalue > 6 &&
                        planvalue <= 9 &&
                        planvalue * 5000 >= 0) {
                      widget.clientdata.pendingfee =
                          (currentfee - 5000).toString();
                    } else if (planvalue * 4500 >= 0) {
                      widget.clientdata.pendingfee =
                          (currentfee - 4500).toString();
                    }
                    visble = false;
                    if (widget.clientdata.category == musclebuilding) {
                      editClient(widget.clientdata.id, widget.clientdata);
                    }
                    if (widget.clientdata.category == fatlose) {
                      editClientF(widget.clientdata.id, widget.clientdata);
                    }
                    if (widget.clientdata.category == corefitness) {
                      editClient(widget.clientdata.id, widget.clientdata);
                    }
                    Navigator.pop(context);
                  });
                },
                child: const Text('Yes',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    )))
          ],
        );
      },
    );
  }

  pogressimageadding() {
    if (widget.clientdata.category == musclebuilding) {
      editClient(widget.clientdata.id, widget.clientdata);
      getAllClient();
      setState(() {});
    } else if (widget.clientdata.category == fatlose) {
      editClientF(widget.clientdata.id, widget.clientdata);
      getAllClientF();
      setState(() {});
    } else {
      editClientC(widget.clientdata.id, widget.clientdata);
      getAllClientC();
      setState(() {});
    }
  }
}
