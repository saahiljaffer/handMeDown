import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handMeDown/AddItem.dart';
import 'package:handMeDown/InfoPage.dart';
import 'package:handMeDown/profilePage.dart';
import 'package:handMeDown/swipeClothes.dart';
// import 'package:image_picker/image_picker.dart';
import 'InfoPage.dart';
import 'GoToDonOrRec.dart';
import 'DonOrRec.dart';
import 'GarmentList.dart';
import 'consentPage.dart';
import 'infoPageTwo.dart';
import 'navbar.dart';
//import 'MapPage.dart';
// import 'ImagePicker.dart';

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
        '/ConsentPage': (context) => ConsentPage(),
        '/GarmentList': (context) => GarmentList(),
        '/InfoPage': (context) => InfoPage(),
        '/AddItem': (context) => AddItem(),
        '/swipeClothes': (context) => SwipeClothes(),
        '/InfoPageTwoDonor': (context) => InfoPageTwo(whichPage: false),
        // '/ImagePicker': (context) => ImagePickerCustom(),
      },
      theme: ThemeData(primaryColor: Colors.orange),
//        home: Scaffold(
//            body: GoToDonOrRec())
//
    );
  }
}
