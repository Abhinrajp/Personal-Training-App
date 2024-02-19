import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_training_app/model/client_model.dart';

ValueNotifier<List<ClientModelM>> clientlistnotifier = ValueNotifier([]);

addClient(ClientModelM clientModelM) async {
  final clientDB = await Hive.openBox<ClientModelM>('client_DB');
  clientDB.put(clientModelM.id, clientModelM);
  getAllClientsFromAllBoxes();
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
  getAllClientsFromAllBoxes();
  getAllClient();
}

editClient(String id, ClientModelM clientModelM) async {
  final clientDB = await Hive.openBox<ClientModelM>('client_DB');
  clientDB.put(id, clientModelM);
  getAllClientsFromAllBoxes();
  getAllClient();
}

ValueNotifier<List<ClientModelM>> clientlistnotifierF = ValueNotifier([]);

addclientF(ClientModelM clientModelM) async {
  final clientDBF = await Hive.openBox<ClientModelM>('client_DBF');
  clientDBF.put(clientModelM.id, clientModelM);
  getAllClientsFromAllBoxes();
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
  getAllClientsFromAllBoxes();
  getAllClientF();
}

editClientF(String id, ClientModelM clientModelM) async {
  final clientDBF = await Hive.openBox<ClientModelM>('client_DBF');
  clientDBF.put(id, clientModelM);
  getAllClientsFromAllBoxes();
  getAllClientF();
}

ValueNotifier<List<ClientModelM>> clientlistnotifierC = ValueNotifier([]);

addclientC(ClientModelM clientModelM) async {
  final clientDBC = await Hive.openBox<ClientModelM>('client_DBC');
  clientDBC.put(clientModelM.id, clientModelM);
  getAllClientsFromAllBoxes();
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
  getAllClientsFromAllBoxes();
  getAllClientC();
}

editClientC(String id, ClientModelM clientModelM) async {
  // ignore: non_constant_identifier_names
  final ClientDBC = await Hive.openBox<ClientModelM>('client_DBC');
  ClientDBC.put(id, clientModelM);
  getAllClientsFromAllBoxes();
  getAllClientC();
}

ValueNotifier<List<ClientModelM>> allClientsNotifier = ValueNotifier([]);

Future<int> getAllClientsFromAllBoxes() async {
  final clientDB = await Hive.openBox<ClientModelM>('client_DB');
  final clientDBF = await Hive.openBox<ClientModelM>('client_DBF');
  final clientDBC = await Hive.openBox<ClientModelM>('client_DBC');

  List<ClientModelM> allClients = [];
  allClients.addAll(clientDB.values);
  allClients.addAll(clientDBF.values);
  allClients.addAll(clientDBC.values);

  allClients.sort((a, b) => a.id.compareTo(b.id));

  allClientsNotifier.value = allClients;
  allClientsNotifier.notifyListeners();
  return allClients.length;
}
