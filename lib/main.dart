import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './GoToDonOrRec.dart';
import './DonOrRec.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('in MyApp');
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.orange),
        home: Scaffold(
          appBar: AppBar(title: Text('Hand Me Down')),
          body: GoToDonOrRec()));
  }
}

