import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'InfoPageWidgets/dropdownmenu.dart';
import 'InfoPageWidgets/button.dart';

void main() {
  runApp(InfoPage());
}

class InfoPage extends StatelessWidget {
  Widget build(BuildContext context) {
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
            SizedBox(
              height: 60.0,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20.0, right: 10.0, top: 10.0, bottom: 10.0),
                child: Text(
                  'We just need a little bit more information to get started:',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,
                    color: Color(0xFF555555),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Gender',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Dropdown(),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Size',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                DropdownSize(),
              ],
            ),
            // SizedBox(
            //   height: 70.0,
            // ),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: new RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/swipeClothes');
                },
                color: Colors.white54,
                child: const Text(
                  'Next',
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
    ));
  }
}
