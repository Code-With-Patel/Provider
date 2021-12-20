import 'dart:async';

import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  int temp = 30;

  void updateTemp(int temp) {
    this.temp = temp;
    notifyListeners();
  }

  //Timer function
  int start = 0;

  void updateStart(int start) {
    this.start = start;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateStart(timer.tick);
    });
  }

//Provider with Async
  String name = "Code with Patel";

  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    Future.delayed(Duration(seconds: 5), () {
      updateName(name);
    });
  }

  //Change the Widget
  bool change = false;

  void updateWidget() {
    change = !change;
    notifyListeners();
  }
}
