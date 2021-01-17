import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handMeDown/FirstScreenWidgets/google.dart';
import './DonOrRec.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';

import 'consentPage.dart';

class GoToDonOrRec extends StatefulWidget {
  @override
  _GoToDonOrRec createState() => _GoToDonOrRec();
}

class _GoToDonOrRec extends State<GoToDonOrRec> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signInGoogle() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
    Navigator.pushReplacement(
        context, CupertinoPageRoute(builder: (context) => ConsentPage()));
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context, snapshot) {
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
                padding:
                    EdgeInsets.only(left: 30, top: 15, bottom: 100, right: 20),
                child: Text(
                  'Our app connects the less fortunate to those who have extra clothes',
                  style: GoogleFonts.quicksand(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              GoogleSignInButton(
                onPressed: _signInGoogle,
                borderRadius: 45,
                textStyle: TextStyle(
                  color: Color(0xff555555),
                  fontSize: 20,
                  fontFamily: "Quicksand",
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
