import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:matchinggame/components/container.dart';
import 'package:matchinggame/viewmodel/provider/gameLogic.dart';

Widget flipcard(queryData, front, back, cardkeys, index, _gameModel, context) {
  int value = index;
  print(value);
  print('here $value');
  return FlipCard(
    key: cardkeys[value],
    flipOnTouch: _gameModel.cardState[value],
    front: container(queryData, front, _gameModel),
    back: container(queryData, back, _gameModel),
    onFlip: () {
      onFlipLogic(_gameModel, value, cardkeys, context);
    },
  );
}
