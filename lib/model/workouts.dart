import 'package:hive_flutter/hive_flutter.dart';
part 'workouts.g.dart';

@HiveType(typeId: 4)
class Workouts {
  @HiveField(1)
  final List<String> chest;
  @HiveField(2)
  final List<String> lats;
  @HiveField(3)
  final List<String> shoulder;
  @HiveField(4)
  final List<String> arms;
  @HiveField(5)
  final List<String> abs;
  @HiveField(6)
  final List<String> leg;
  Workouts(
    this.chest,
    this.lats,
    this.shoulder,
    this.arms,
    this.abs,
    this.leg,
  );
}

@HiveType(typeId: 5)
class Diet {
  @HiveField(1)
  final String firstmeal;
  @HiveField(2)
  final String secondmeal;
  @HiveField(3)
  final String thirdmeal;
  @HiveField(4)
  final String fourthmeal;
  @HiveField(5)
  final String fifthmeal;
  @HiveField(6)
  final String sixthmeal;
  @HiveField(7)
  final String seventhmeal;
  Diet(this.firstmeal, this.secondmeal, this.thirdmeal, this.fourthmeal,
      this.fifthmeal, this.sixthmeal, this.seventhmeal);
}

@HiveType(typeId: 6)
class FatWorkout {
  @HiveField(1)
  final List<String> chest;
  @HiveField(2)
  final List<String> lats;
  @HiveField(3)
  final List<String> shoulder;
  @HiveField(4)
  final List<String> arms;
  @HiveField(5)
  final List<String> abs;
  @HiveField(6)
  final List<String> leg;

  FatWorkout(
      {required this.chest,
      required this.lats,
      required this.shoulder,
      required this.arms,
      required this.abs,
      required this.leg});
}

@HiveType(typeId: 7)
class FatDiet {
  @HiveField(1)
  final String firstmeal;
  @HiveField(2)
  final String secondmeal;
  @HiveField(3)
  final String thirdmeal;
  @HiveField(4)
  final String fourthmeal;
  @HiveField(5)
  final String fifthmeal;
  @HiveField(6)
  final String sixthmeal;
  @HiveField(7)
  final String seventhmeal;

  FatDiet(
      {required this.firstmeal,
      required this.secondmeal,
      required this.thirdmeal,
      required this.fourthmeal,
      required this.fifthmeal,
      required this.sixthmeal,
      required this.seventhmeal});
}

@HiveType(typeId: 8)
class CoreWorkout {
  @HiveField(1)
  final List<String> chest;
  @HiveField(2)
  final List<String> lats;
  @HiveField(3)
  final List<String> shoulder;
  @HiveField(4)
  final List<String> arms;
  @HiveField(5)
  final List<String> abs;
  @HiveField(6)
  final List<String> leg;

  CoreWorkout(
      {required this.chest,
      required this.lats,
      required this.shoulder,
      required this.arms,
      required this.abs,
      required this.leg});
}

@HiveType(typeId: 9)
class CoreDiet {
  @HiveField(1)
  final String firstmeal;
  @HiveField(2)
  final String secondmeal;
  @HiveField(3)
  final String thirdmeal;
  @HiveField(4)
  final String fourthmeal;
  @HiveField(5)
  final String fifthmeal;
  @HiveField(6)
  final String sixthmeal;
  @HiveField(7)
  final String seventhmeal;

  CoreDiet(
      {required this.firstmeal,
      required this.secondmeal,
      required this.thirdmeal,
      required this.fourthmeal,
      required this.fifthmeal,
      required this.sixthmeal,
      required this.seventhmeal});
}
