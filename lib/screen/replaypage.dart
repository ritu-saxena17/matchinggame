import 'package:flutter/material.dart';
import 'package:matchinggame/components/appbar.dart';
import 'package:matchinggame/routes/routes.dart';
import 'package:matchinggame/utils/colors.dart';

class ReplayPage extends StatefulWidget {
  @override
  _ReplayPageState createState() => _ReplayPageState();
}

class _ReplayPageState extends State<ReplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: FlatButton(
          color: red,
          onPressed: () {
            Navigator.pushNamed(context, Routes().gameScreen);
          },
          child: Text(
            'Replay',
            style: TextStyle(color: black),
          ),
        ),
      ),
    );
  }
}
