import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handMeDown/AddItem.dart';
import 'package:handMeDown/InfoPage.dart';
// import 'package:image_picker/image_picker.dart';
import 'InfoPage.dart';
import 'GoToDonOrRec.dart';
import 'DonOrRec.dart';
import 'GarmentList.dart';
//import 'MapPage.dart';
// import 'ImagePicker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('in MyApp');
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => GoToDonOrRec(),
        '/DonOrRec': (context) => DonOrRec(),
        '/GarmentList': (context) => GarmentList(),
        '/InfoPage': (context) => InfoPage(),
        '/AddItem': (context) => AddItem(),
        // '/ImagePicker': (context) => ImagePickerCustom(),
      },
      theme: ThemeData(primaryColor: Colors.orange),
//        home: Scaffold(
//            body: GoToDonOrRec())
//
    );
  }
}
