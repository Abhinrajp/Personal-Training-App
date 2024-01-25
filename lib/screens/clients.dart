import 'dart:io';

import 'package:flutter/material.dart';
import 'package:personal_training_app/functions/dbfuntions.dart';
import 'package:personal_training_app/screens/details.dart';
import 'package:personal_training_app/screens/form_screen.dart';
import 'package:personal_training_app/screens/screen_edit_profile.dart';

class ScreenClient extends StatefulWidget {
  final String tileclientdetails;
  const ScreenClient({super.key, required this.tileclientdetails});

  @override
  State<ScreenClient> createState() => _ScreenClientState();
}

class _ScreenClientState extends State<ScreenClient> {
  @override
  Widget build(BuildContext context) {
    getAllClient();
    return Scaffold(
      floatingActionButton: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ScreenForm(titleform: widget.tileclientdetails),
                ));
          },
          icon: const Icon(Icons.person_add)),
      appBar: AppBar(
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
        valueListenable: clientlistnotifier,
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              final clientdata = value[index];
              return Card(
                color: const Color.fromARGB(255, 80, 80, 80),
                elevation: 3,
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
                            ),
                          ));
                    },
                    leading: CircleAvatar(
                      backgroundImage: FileImage(File(clientdata.image)),
                      radius: 30,
                    ),
                    title: Text(
                      clientdata.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      clientdata.phone,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    trailing: SizedBox(
                      width: 96,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ScreenEditProfile(
                                      clientdata: clientdata,
                                      index: index,
                                      categorytitle: widget.tileclientdetails,
                                    ),
                                  ));
                            },
                            icon: const Icon(Icons.edit),
                            color: Colors.black,
                          ),
                          IconButton(
                              onPressed: () {
                                deletemsg(context, clientdata.id);
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.black,
                              ))
                        ],
                      ),
                    )),
              );
            },
          );
        },
      )),
    );
  }

  deletemsg(context, String id) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Are you sure'),
          content: const Text('Do you want to delete this Client'),
          actions: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () {
                  deleteClient(id);
                  Navigator.pop(context);

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                      'Client Deleted',
                      textAlign: TextAlign.center,
                    ),
                    backgroundColor: Colors.red,
                  ));
                },
                child: const Text('Yes')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('No')),
          ],
        );
      },
    );
  }
}
