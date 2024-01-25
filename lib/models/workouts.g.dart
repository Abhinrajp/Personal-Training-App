// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workouts.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutsAdapter extends TypeAdapter<Workouts> {
  @override
  final int typeId = 4;

  @override
  Workouts read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Workouts(
      (fields[1] as List).cast<String>(),
      (fields[2] as List).cast<String>(),
      (fields[3] as List).cast<String>(),
      (fields[4] as List).cast<String>(),
      (fields[5] as List).cast<String>(),
      (fields[6] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Workouts obj) {
    writer
      ..writeByte(6)
      ..writeByte(1)
      ..write(obj.chest)
      ..writeByte(2)
      ..write(obj.lats)
      ..writeByte(3)
      ..write(obj.shoulder)
      ..writeByte(4)
      ..write(obj.arms)
      ..writeByte(5)
      ..write(obj.abs)
      ..writeByte(6)
      ..write(obj.leg);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DietAdapter extends TypeAdapter<Diet> {
  @override
  final int typeId = 5;

  @override
  Diet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Diet(
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as String,
      fields[5] as String,
      fields[6] as String,
      fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Diet obj) {
    writer
      ..writeByte(7)
      ..writeByte(1)
      ..write(obj.firstmeal)
      ..writeByte(2)
      ..write(obj.secondmeal)
      ..writeByte(3)
      ..write(obj.thirdmeal)
      ..writeByte(4)
      ..write(obj.fourthmeal)
      ..writeByte(5)
      ..write(obj.fifthmeal)
      ..writeByte(6)
      ..write(obj.sixthmeal)
      ..writeByte(7)
      ..write(obj.seventhmeal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DietAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FatWorkoutAdapter extends TypeAdapter<FatWorkout> {
  @override
  final int typeId = 6;

  @override
  FatWorkout read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FatWorkout(
      chest: (fields[1] as List).cast<String>(),
      lats: (fields[2] as List).cast<String>(),
      shoulder: (fields[3] as List).cast<String>(),
      arms: (fields[4] as List).cast<String>(),
      abs: (fields[5] as List).cast<String>(),
      leg: (fields[6] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, FatWorkout obj) {
    writer
      ..writeByte(6)
      ..writeByte(1)
      ..write(obj.chest)
      ..writeByte(2)
      ..write(obj.lats)
      ..writeByte(3)
      ..write(obj.shoulder)
      ..writeByte(4)
      ..write(obj.arms)
      ..writeByte(5)
      ..write(obj.abs)
      ..writeByte(6)
      ..write(obj.leg);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FatWorkoutAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FatDietAdapter extends TypeAdapter<FatDiet> {
  @override
  final int typeId = 7;

  @override
  FatDiet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FatDiet(
      firstmeal: fields[1] as String,
      secondmeal: fields[2] as String,
      thirdmeal: fields[3] as String,
      fourthmeal: fields[4] as String,
      fifthmeal: fields[5] as String,
      sixthmeal: fields[6] as String,
      seventhmeal: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FatDiet obj) {
    writer
      ..writeByte(7)
      ..writeByte(1)
      ..write(obj.firstmeal)
      ..writeByte(2)
      ..write(obj.secondmeal)
      ..writeByte(3)
      ..write(obj.thirdmeal)
      ..writeByte(4)
      ..write(obj.fourthmeal)
      ..writeByte(5)
      ..write(obj.fifthmeal)
      ..writeByte(6)
      ..write(obj.sixthmeal)
      ..writeByte(7)
      ..write(obj.seventhmeal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FatDietAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CoreWorkoutAdapter extends TypeAdapter<CoreWorkout> {
  @override
  final int typeId = 8;

  @override
  CoreWorkout read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoreWorkout(
      chest: (fields[1] as List).cast<String>(),
      lats: (fields[2] as List).cast<String>(),
      shoulder: (fields[3] as List).cast<String>(),
      arms: (fields[4] as List).cast<String>(),
      abs: (fields[5] as List).cast<String>(),
      leg: (fields[6] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, CoreWorkout obj) {
    writer
      ..writeByte(6)
      ..writeByte(1)
      ..write(obj.chest)
      ..writeByte(2)
      ..write(obj.lats)
      ..writeByte(3)
      ..write(obj.shoulder)
      ..writeByte(4)
      ..write(obj.arms)
      ..writeByte(5)
      ..write(obj.abs)
      ..writeByte(6)
      ..write(obj.leg);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoreWorkoutAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CoreDietAdapter extends TypeAdapter<CoreDiet> {
  @override
  final int typeId = 9;

  @override
  CoreDiet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoreDiet(
      firstmeal: fields[1] as String,
      secondmeal: fields[2] as String,
      thirdmeal: fields[3] as String,
      fourthmeal: fields[4] as String,
      fifthmeal: fields[5] as String,
      sixthmeal: fields[6] as String,
      seventhmeal: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CoreDiet obj) {
    writer
      ..writeByte(7)
      ..writeByte(1)
      ..write(obj.firstmeal)
      ..writeByte(2)
      ..write(obj.secondmeal)
      ..writeByte(3)
      ..write(obj.thirdmeal)
      ..writeByte(4)
      ..write(obj.fourthmeal)
      ..writeByte(5)
      ..write(obj.fifthmeal)
      ..writeByte(6)
      ..write(obj.sixthmeal)
      ..writeByte(7)
      ..write(obj.seventhmeal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoreDietAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
