import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }

  void resetCounter() {
    _counter = 0;
    notifyListeners();
  }
}
