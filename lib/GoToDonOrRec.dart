import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './DonOrRec.dart';
import 'FirstScreenWidgets/signinbutton.dart';
//import 'buttonSignIn';

class GoToDonOrRec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 125, bottom: 25),
              child: Image(
                image: AssetImage('items/logo.png'),
                width: 300,
                height: 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 15, bottom: 5),
              child: Text(
                'Hand Me Down',
                style: GoogleFonts.quicksand(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFEB5729),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 15, bottom: 5, right: 20),
              child: Text(
                'Our app connects the less fortunate to those who have extra clothes',
                style: GoogleFonts.quicksand(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            SignInButton(),
          ],
        ),
      ),
    );
  }
}
