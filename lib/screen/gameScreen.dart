import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:matchinggame/components/appbar.dart';
import 'package:matchinggame/components/flipCard.dart';
import 'package:matchinggame/model/gameModel.dart';
import 'package:matchinggame/utils/colors.dart';
import 'package:matchinggame/utils/strings.dart';
import 'package:matchinggame/utils/style.dart';
import 'package:provider/provider.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List<GlobalKey<FlipCardState>> cardkeys = [];
  MediaQueryData queryData;
  GameModel _gameModel = GameModel();

  @override
  void initState() {
    super.initState();
    _gameModel.images.shuffle();
    cardkeys = List<GlobalKey<FlipCardState>>.generate(
        8, (i) => new GlobalKey<FlipCardState>(debugLabel: ' cardkeys'));
  }

  @override
  Widget build(BuildContext context) {
    //int index = _gameModel.index;
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: grey,
      appBar: appBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: queryData.size.width * 0.4),
            ),
            Container(
              child: Consumer<GameModel>(
                builder: (context, _gameModel, child) {
                  print('points');
                  print(_gameModel.points);
                  return RichText(
                    text: TextSpan(
                      //text: 'Hello ',
                      //style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Your Points - ${_gameModel.points}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: black)),
                        TextSpan(
                            text: '\tNeed to score 40',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: black)),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Text(
                '\nLet\'s start',
                style: TextStyle(fontSize: 16, color: black),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                  queryData.size.width * 0.025,
                  queryData.size.width * 0.0125,
                  0,
                  queryData.size.width * 0.0125),
              child: Row(
                children: <Widget>[
                  flipcard(queryData, questionMark, _gameModel.images[0],
                      cardkeys, 0, _gameModel, context),
                  padding(queryData),
                  flipcard(queryData, questionMark, _gameModel.images[1],
                      cardkeys, 1, _gameModel, context),
                  padding(queryData),
                  flipcard(queryData, questionMark, _gameModel.images[2],
                      cardkeys, 2, _gameModel, context),
                  padding(queryData),
                  flipcard(queryData, questionMark, _gameModel.images[3],
                      cardkeys, 3, _gameModel, context),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                  queryData.size.width * 0.025,
                  queryData.size.width * 0.0125,
                  0,
                  queryData.size.width * 0.0125),
              child: Row(
                children: <Widget>[
                  flipcard(queryData, questionMark, _gameModel.images[4],
                      cardkeys, 4, _gameModel, context),
                  padding(queryData),
                  flipcard(queryData, questionMark, _gameModel.images[5],
                      cardkeys, 5, _gameModel, context),
                  padding(queryData),
                  flipcard(queryData, questionMark, _gameModel.images[6],
                      cardkeys, 6, _gameModel, context),
                  padding(queryData),
                  flipcard(queryData, questionMark, _gameModel.images[7],
                      cardkeys, 7, _gameModel, context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
