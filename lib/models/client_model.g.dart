// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClientModelMAdapter extends TypeAdapter<ClientModelM> {
  @override
  final int typeId = 1;

  @override
  ClientModelM read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClientModelM(
      id: fields[0] as String,
      name: fields[1] as String,
      age: fields[8] as String,
      place: fields[2] as String,
      phone: fields[3] as String,
      height: fields[4] as String,
      weight: fields[5] as String,
      blood: fields[6] as String,
      plan: fields[7] as String,
      image: fields[11] as String,
      workoutsobj: fields[9] as Workouts?,
      dietobj: fields[10] as Diet?,
    );
  }

  @override
  void write(BinaryWriter writer, ClientModelM obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.place)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.height)
      ..writeByte(5)
      ..write(obj.weight)
      ..writeByte(6)
      ..write(obj.blood)
      ..writeByte(7)
      ..write(obj.plan)
      ..writeByte(8)
      ..write(obj.age)
      ..writeByte(9)
      ..write(obj.workoutsobj)
      ..writeByte(10)
      ..write(obj.dietobj)
      ..writeByte(11)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientModelMAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ClientModelFAdapter extends TypeAdapter<ClientModelF> {
  @override
  final int typeId = 2;

  @override
  ClientModelF read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClientModelF(
      id: fields[0] as String,
      name: fields[1] as String,
      place: fields[2] as String,
      phone: fields[3] as String,
      height: fields[4] as String,
      weight: fields[5] as String,
      blood: fields[6] as String,
      plan: fields[7] as String,
      age: fields[11] as String,
      image: fields[10] as String,
      fatWorkoutobj: fields[8] as FatWorkout?,
      fatDietobj: fields[9] as FatDiet?,
    );
  }

  @override
  void write(BinaryWriter writer, ClientModelF obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.place)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.height)
      ..writeByte(5)
      ..write(obj.weight)
      ..writeByte(6)
      ..write(obj.blood)
      ..writeByte(7)
      ..write(obj.plan)
      ..writeByte(8)
      ..write(obj.fatWorkoutobj)
      ..writeByte(9)
      ..write(obj.fatDietobj)
      ..writeByte(10)
      ..write(obj.image)
      ..writeByte(11)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientModelFAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ClientModelCAdapter extends TypeAdapter<ClientModelC> {
  @override
  final int typeId = 3;

  @override
  ClientModelC read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClientModelC(
      id: fields[0] as String,
      name: fields[1] as String,
      place: fields[2] as String,
      phone: fields[3] as String,
      height: fields[4] as String,
      weight: fields[5] as String,
      blood: fields[6] as String,
      plan: fields[7] as String,
      age: fields[11] as String,
      image: fields[10] as String,
      coreWorkoutobj: fields[8] as CoreWorkout?,
      coreDietobj: fields[9] as CoreDiet?,
    );
  }

  @override
  void write(BinaryWriter writer, ClientModelC obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.place)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.height)
      ..writeByte(5)
      ..write(obj.weight)
      ..writeByte(6)
      ..write(obj.blood)
      ..writeByte(7)
      ..write(obj.plan)
      ..writeByte(8)
      ..write(obj.coreWorkoutobj)
      ..writeByte(9)
      ..write(obj.coreDietobj)
      ..writeByte(10)
      ..write(obj.image)
      ..writeByte(11)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientModelCAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
