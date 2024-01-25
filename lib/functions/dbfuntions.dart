import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_training_app/models/client_model.dart';

ValueNotifier<List<ClientModelM>> clientlistnotifier = ValueNotifier([]);

addClient(ClientModelM clientModelM) async {
  final clientDB = await Hive.openBox<ClientModelM>('client_DB');
  clientDB.put(clientModelM.id, clientModelM);
  getAllClient();
}

getAllClient() async {
  final clientDB = await Hive.openBox<ClientModelM>('client_DB');
  clientlistnotifier.value.clear();
  clientlistnotifier.value.addAll(clientDB.values);
  clientlistnotifier.notifyListeners();
}

deleteClient(String id) async {
  final clientDB = await Hive.openBox<ClientModelM>('client_DB');
  clientDB.delete(id);
  getAllClient();
}

editClient(int index, ClientModelM clientModelM) async {
  final clientDB = await Hive.openBox<ClientModelM>('client_DB');
  clientDB.putAt(index, clientModelM);
  getAllClient();
}

ValueNotifier<List<ClientModelM>> clientlistnotifierF = ValueNotifier([]);

addclientF(ClientModelM clientModelM) async {
  final clientDBF = await Hive.openBox<ClientModelM>('client_DBF');
  clientDBF.put(clientModelM.id, clientModelM);
  getAllClientF();
}

getAllClientF() async {
  final clientDBF = await Hive.openBox<ClientModelM>('client_DBF');
  clientlistnotifierF.value.clear();
  clientlistnotifierF.value.addAll(clientDBF.values);
  clientlistnotifierF.notifyListeners();
}

deleteClientF(String id) async {
  final clientDBF = await Hive.openBox<ClientModelM>('client_DBF');
  clientDBF.delete(id);
  getAllClientF();
}

editClientF(int index, ClientModelM clientModelM) async {
  final clientDBF = await Hive.openBox<ClientModelM>('client_DBF');
  clientDBF.putAt(index, clientModelM);
  getAllClientF();
}

ValueNotifier<List<ClientModelM>> clientlistnotifierC = ValueNotifier([]);

addclientC(ClientModelM clientModelM) async {
  final clientDBC = await Hive.openBox<ClientModelM>('client_DBC');
  clientDBC.put(clientModelM.id, clientModelM);
  getAllClientC();
}

getAllClientC() async {
  final clientDBC = await Hive.openBox<ClientModelM>('client_DBC');
  clientlistnotifierC.value.clear();
  clientlistnotifierC.value.addAll(clientDBC.values);
  clientlistnotifierC.notifyListeners();
}

deleteClientC(String id) async {
  final clientDBC = await Hive.openBox<ClientModelM>('client_DBC');
  clientDBC.delete(id);
  getAllClientC();
}

editClientC(int index, ClientModelM clientModelM) async {
  // ignore: non_constant_identifier_names
  final ClientDBC = await Hive.openBox<ClientModelM>('client_DBC');
  ClientDBC.putAt(index, clientModelM);
  getAllClientC();
}
