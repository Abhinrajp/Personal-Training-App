import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_training_app/models/client_model.dart';

class Boxes {
  static Box<ClientModelM> getdata() => Hive.box('items');
}
