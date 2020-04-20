import 'package:flutter/widgets.dart';
import 'package:matchinggame/model/gameModel.dart';
import 'package:matchinggame/routes/routes.dart';
import 'package:provider/provider.dart';

onFlipLogic(_gameModel, value, cardkeys, context) {
  if (!_gameModel.open) {
    _gameModel.open = true;
    _gameModel.lastFlip = value;
  } else {
    _gameModel.open = false;
    if (_gameModel.lastFlip != value) {
      if (_gameModel.images[_gameModel.lastFlip] != _gameModel.images[value]) {
        cardkeys[_gameModel.lastFlip].currentState.toggleCard();
        _gameModel.lastFlip = value;
      } else {
        _gameModel.cardState[_gameModel.lastFlip] = false;
        _gameModel.cardState[value] = false;
        Provider.of<GameModel>(context).changePoints();
        if (_gameModel.cardState.every((t) => t == false)) {
          Navigator.pushNamed(context, Routes().replayScreen);
        }
      }
    }
  }
}
