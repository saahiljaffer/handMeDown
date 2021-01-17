import 'package:flutter/material.dart';
import './GarmentList.dart';
import 'package:google_fonts/google_fonts.dart';
import 'globals.dart' as globals;

class ItemSelected extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var garment = globals.currentGarment;
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
    body: Container(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    SizedBox(
    height: 50.0,
    ),
    Padding(
    padding: EdgeInsets.only(
    right: 59.0,
    ),
    child: Text(
      'Hand Me Down',
      style: GoogleFonts.quicksand(
      fontSize: 40.0,
      fontWeight: FontWeight.w700,
      color: Color(0xFFEB5729),
    ),
    ),
    ),
      Card(
        color: Colors.white,
        elevation: 5,
        child: Padding(
          padding: new EdgeInsets.all(15),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: new EdgeInsets.only(bottom: 10),
                child: Image(
                  image: AssetImage(garment.assetName),
                  width: 300,
                  height: 100,
                ),
              ),
              Text(garment.title, style: TextStyle(fontSize: 24.0)),
              Text(garment.description, style: TextStyle(fontSize: 16.0)),
              Text(garment.size, style: TextStyle(fontSize: 16.0)),
              Text(garment.gender, style: TextStyle(fontSize: 16.0)),
            ],
          ),
        ),
      ),
    ]
        ),
        )
      )
    );
  }
}