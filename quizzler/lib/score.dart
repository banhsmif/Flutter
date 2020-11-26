import 'package:flutter/material.dart';

class Score extends ChangeNotifier {
  List<Icon> scoreList = [];

  void trueClick() {
    scoreList.add(Icon(Icons.check, color: Colors.green));
  }

  void falseClick() {
    scoreList.add(Icon(Icons.close, color: Colors.red));
  }
}
