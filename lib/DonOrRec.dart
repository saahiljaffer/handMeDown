import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

import 'package:handMeDown/swipeClothes.dart';

class DonOrRec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Container(
          child: new Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 5, top: 140, bottom: 130),
                child: Text(
                  'Hand Me Down',
                  style: GoogleFonts.quicksand(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFEB5729),
                  ),
                ),
              ),

              // const SizedBox(height: 200),
              new RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/GarmentList');
                },
                color: Colors.white54,
                child: const Text(
                  'Donate',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                padding: EdgeInsets.fromLTRB(30, 17, 30, 20),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/InfoPage');
                  },
                  color: Colors.white54,
                  child: const Text(
                    'Receive',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(30, 17, 30, 20),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
