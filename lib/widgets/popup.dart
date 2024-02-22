import 'package:flutter/material.dart';
import 'package:personal_training_app/controller/db_contoller/dbfuntions.dart';
import 'package:personal_training_app/model/client_model.dart';

final String musclebuilding = 'Muscle Building';
final String fatlose = 'Fat Lose';
final String corefitness = 'Core Fitness';
deletemsg(context, ClientModelM client) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.black,
        title: const Text(
          'Are you sure',
          style: TextStyle(color: Colors.white),
        ),
        content: const Text('Do you want to delete this Client',
            style: TextStyle(color: Colors.white)),
        actions: [
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red)),
              onPressed: () {
                if (client.category == musclebuilding) {
                  deleteClient(client.id);
                } else if (client.category == fatlose) {
                  deleteClientF(client.id);
                } else if (client.category == corefitness) {
                  deleteClientC(client.id);
                }
                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                    'Client Deleted',
                    textAlign: TextAlign.center,
                  ),
                  backgroundColor: Colors.red,
                ));
              },
              child: const Text(
                'Yes',
                style: TextStyle(color: Colors.black),
              )),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'No',
                style: TextStyle(color: Colors.black),
              )),
        ],
      );
    },
  );
}

Object weeks(String id, String plan) {
  DateTime joinedDate = DateTime.parse(id);
  DateTime currentDate = DateTime.now();
  int dayDiff = currentDate.difference(joinedDate).inDays;

  int weekDiff = (dayDiff / 7).ceil();
  var planover = ((double.parse(plan) * 4.3) > 5)
      ? (double.parse(plan) * 4.3).round()
      : (double.parse(plan) * 4.3).toInt();
  if (weekDiff == planover) {
    var week = const Text(
      'Plan over',
      style: TextStyle(
        color: Colors.red,
      ),
    );
    return week;
  }
  return weekDiff;
}
