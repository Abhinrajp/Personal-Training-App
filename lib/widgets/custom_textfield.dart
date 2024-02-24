import 'package:flutter/material.dart';
import 'package:personal_training_app/model/client_model.dart';

class Customtextfield extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? keyboardType;
  String? labelText;
  String? valiator;
  int? maxlength;
  Customtextfield(
      {super.key,
      required this.controller,
      this.keyboardType,
      this.labelText,
      this.valiator,
      this.maxlength});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.white.withOpacity(.4),
      ),
      maxLength: maxlength,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return valiator;
        }
        return null;
      },
    );
  }
}

class Custometextphone extends StatelessWidget {
  TextEditingController controller;
  Custometextphone({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.number,
      maxLength: 10,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none),
        labelText: 'Phone Number',
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.white.withOpacity(.4),
      ),
      validator: (value) {
        if (value == null || value.isEmpty || value.length != 10) {
          return 'Enter a valied Phone number';
        }
        return null;
      },
    );
  }
}

class Textforprofiledetails extends StatelessWidget {
  String detail;
  Textforprofiledetails({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Text(
      detail,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.grey,
        fontSize: 20,
      ),
    );
  }
}

class Textforprofiledetailenter extends StatelessWidget {
  String? detail;
  Textforprofiledetailenter({
    super.key,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      detail!,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}

class PlanBadge extends StatelessWidget {
  const PlanBadge({
    Key? key,
    required this.clientdata,
  }) : super(key: key);

  final ClientModelM clientdata;

  @override
  Widget build(BuildContext context) {
    if (int.parse(clientdata.plan) <= 3) {
      return Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellowAccent.shade700,
          ),
          // Flexible(
          //   child: Text(
          //     'Gold',
          //     style: TextStyle(
          //       color: Colors.yellowAccent.shade700,
          //       fontWeight: FontWeight.bold,
          //     ),
          //     overflow: TextOverflow.ellipsis,
          //   ),
          // ),
        ],
      );
    } else if (int.parse(clientdata.plan) > 3 &&
        int.parse(clientdata.plan) <= 6) {
      return Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.blueGrey.shade100,
          ),
          // Flexible(
          //   child: Text(
          //     'Platinum',
          //     style: TextStyle(
          //       color: Colors.blueGrey.shade100,
          //       fontWeight: FontWeight.bold,
          //     ),
          //     overflow: TextOverflow.ellipsis,
          //   ),
          // ),
        ],
      );
    } else {
      return Row(
        children: [
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 139, 185, 224),
          ),
          // Flexible(
          //   child: Text(
          //     'Diamond',
          //     style: TextStyle(
          //       color: Color.fromARGB(255, 139, 185, 224),
          //       fontWeight: FontWeight.bold,
          //     ),
          //     overflow: TextOverflow.ellipsis,
          //   ),
          // ),
        ],
      );
    }
  }
}
