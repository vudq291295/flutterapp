// ignore: file_names
import 'package:flutter/cupertino.dart';

class ChangeNotifyModel extends ChangeNotifier {
  String _parameter = "";
  String get parameter => _parameter;

  void passParameter(String parameter) {
    _parameter = parameter;
    notifyListeners();
  }
}
