import 'package:flutter/material.dart';
import 'package:matchinggame/utils/strings.dart';

class GameModel extends ChangeNotifier {
  int _points = 0;

  bool open = false;

  int lastFlip = -1;

  int index;
  List<String> images = [king, king, queen, queen, joker, joker, tens, tens];

  List<bool> _cardState = [true, true, true, true, true, true, true, true];

  List<bool> get cardState => _cardState;

  set cardState(List<bool> cardState) {
    this._cardState = cardState;
  }

  int get points => _points;

  set points(int points) {
    this._points = points;
  }

  //provider
  changePoints() {
    points = points + 10;
    notifyListeners();
  }

  // changeImage() {
  //   notifyListeners();
  // }
}
