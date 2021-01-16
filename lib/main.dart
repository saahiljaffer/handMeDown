import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handMeDown/InfoPage.dart';
import 'InfoPage.dart';
import 'GoToDonOrRec.dart';
import 'DonOrRec.dart';
import 'GarmentList.dart';
//import 'MapPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => GoToDonOrRec(),
          '/DonOrRec': (context) => DonOrRec(),
          '/GarmentList': (context) => GarmentList(),
          '/InfoPage': (context) => InfoPage(),
        },
        theme: ThemeData(primaryColor: Colors.orange),
//        home: Scaffold(
//            body: GoToDonOrRec())
//
     );
  }
}