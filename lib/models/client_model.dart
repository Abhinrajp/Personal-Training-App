import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_training_app/models/workouts.dart';
part 'client_model.g.dart';

@HiveType(typeId: 1)
class ClientModelM {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String place;
  @HiveField(3)
  String phone;
  @HiveField(4)
  String height;
  @HiveField(5)
  String weight;
  @HiveField(6)
  String blood;
  @HiveField(7)
  String plan;
  @HiveField(8)
  String age;
  @HiveField(9)
  late Workouts? workoutsobj;
  @HiveField(10)
  late Diet? dietobj;
  @HiveField(11)
  String image;
  ClientModelM(
      {required this.id,
      required this.name,
      required this.age,
      required this.place,
      required this.phone,
      required this.height,
      required this.weight,
      required this.blood,
      required this.plan,
      required this.image,
      this.workoutsobj,
      this.dietobj});
}

@HiveType(typeId: 2)
class ClientModelF {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String place;
  @HiveField(3)
  final String phone;
  @HiveField(4)
  final String height;
  @HiveField(5)
  final String weight;
  @HiveField(6)
  final String blood;
  @HiveField(7)
  final String plan;
  @HiveField(8)
  late FatWorkout? fatWorkoutobj;
  @HiveField(9)
  late FatDiet? fatDietobj;
  @HiveField(10)
  String image;
  @HiveField(11)
  String age;

  ClientModelF(
      {required this.id,
      required this.name,
      required this.place,
      required this.phone,
      required this.height,
      required this.weight,
      required this.blood,
      required this.plan,
      required this.age,
      required this.image,
      this.fatWorkoutobj,
      this.fatDietobj});
}

@HiveType(typeId: 3)
class ClientModelC {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String place;
  @HiveField(3)
  final String phone;
  @HiveField(4)
  final String height;
  @HiveField(5)
  final String weight;
  @HiveField(6)
  final String blood;
  @HiveField(7)
  final String plan;
  @HiveField(8)
  late CoreWorkout? coreWorkoutobj;
  @HiveField(9)
  late CoreDiet? coreDietobj;
  @HiveField(10)
  String image;
  @HiveField(11)
  String age;

  ClientModelC(
      {required this.id,
      required this.name,
      required this.place,
      required this.phone,
      required this.height,
      required this.weight,
      required this.blood,
      required this.plan,
      required this.age,
      required this.image,
      this.coreWorkoutobj,
      this.coreDietobj});
}
