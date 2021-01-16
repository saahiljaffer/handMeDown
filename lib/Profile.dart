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
                'Profile',
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
                padding: EdgeInsets.all(0),
                child: ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text("Saahil Jaffer"),
                  subtitle: const Text("Toronto, Ontario"),
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
                ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text("Saahil"),
                  subtitle: const Text("Toronto, Ontario"),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Contact Info',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
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
            SizedBox(
              height: 70.0,
            ),
            BottomButton(),
          ],
        ),
      ),
    ));
  }
}
