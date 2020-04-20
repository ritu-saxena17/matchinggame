import 'package:flutter/material.dart';
import 'package:matchinggame/model/gameModel.dart';
import 'package:matchinggame/routes/routes.dart';
import 'package:matchinggame/screen/gameScreen.dart';
import 'package:matchinggame/screen/replaypage.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Routes route = Routes();
    return MaterialApp(initialRoute: route.gameScreen, routes: {
      route.gameScreen: (context) => ChangeNotifierProvider(
            create: (context) => GameModel(),
            child: GamePage(),
          ),
      route.replayScreen: (context) => ReplayPage(),
    });
  }
}
