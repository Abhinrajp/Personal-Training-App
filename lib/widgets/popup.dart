import 'package:flutter/material.dart';
import 'package:personal_training_app/controller/db_contoller/dbfuntions.dart';

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
                deleteClientF(id);
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
