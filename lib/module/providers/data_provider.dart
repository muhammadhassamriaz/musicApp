import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  int _index = 0;
  int get index {
    return _index;
  }

  setIndexValue(int _value) {
    _index = _value;
    notifyListeners();
  }
}
