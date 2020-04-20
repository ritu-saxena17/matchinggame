import 'package:flutter/material.dart';

Widget container(queryData, image, _gameModel) {
  return Container(
    width: queryData.size.width * 0.22,
    height: queryData.size.height * 0.2,
    decoration: BoxDecoration(
      image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image)),
    ),
  );
}
