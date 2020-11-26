import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  void increasementCounter() {
    _counter++;
    notifyListeners();
  }

  void decreasementCounter() {
    _counter--;
    notifyListeners();
  }
}
