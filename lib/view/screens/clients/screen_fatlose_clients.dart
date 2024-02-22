import 'dart:io';

import 'package:flutter/material.dart';
import 'package:personal_training_app/controller/db_contoller/dbfuntions.dart';
import 'package:personal_training_app/view/screens/profile_screen/workout_stack.dart';
import 'package:personal_training_app/view/screens/edit_screen/screen_edit_profile.dart';
import 'package:personal_training_app/widgets/popup.dart';

class ScreenFatloseClients extends StatefulWidget {
  final String tileclientdetails;
  const ScreenFatloseClients({super.key, required this.tileclientdetails});

  @override
  State<ScreenFatloseClients> createState() => _ScreenFatloseClientsState();
}

class _ScreenFatloseClientsState extends State<ScreenFatloseClients> {
  @override
  Widget build(BuildContext context) {
    getAllClientF();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(
          widget.tileclientdetails,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
      ),
      body: Center(
          child: ValueListenableBuilder(
              valueListenable: clientlistnotifierF,
              builder: (context, value, child) {
                if (value.isEmpty) {
                  return Text('No Clients',
                      style: TextStyle(fontWeight: FontWeight.bold));
                } else {
                  return ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      final clientdata = value[index];
                      return Card(
                        color: const Color.fromARGB(255, 80, 80, 80),
                        elevation: 5,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        child: ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ScreenDetails(
                                      clientdata: clientdata,
                                      category: widget.tileclientdetails,
                                      index: index,
                                    ),
                                  ));
                            },
                            leading: CircleAvatar(
                              backgroundImage:
                                  FileImage(File(clientdata.image)),
                              radius: 30,
                            ),
                            title: Text(
                              clientdata.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              clientdata.phone,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            trailing: SizedBox(
                              width: 96,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'Week ${weeks(clientdata.id, clientdata.plan)}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ScreenEditProfile(
                                                    clientdata: clientdata,
                                                    index: index,
                                                    categorytitle: widget
                                                        .tileclientdetails,
                                                  ),
                                                ));
                                          },
                                          icon: const Icon(Icons.edit),
                                          color: Colors.black,
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              deletemsg(context, clientdata);
                                            },
                                            icon: const Icon(
                                              Icons.delete,
                                              color: Colors.black,
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      );
                    },
                  );
                }
              })),
    );
  }
}
