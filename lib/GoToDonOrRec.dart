import 'package:flutter/material.dart';
import './DonOrRec.dart';
import 'FirstScreenWidgets/signinbutton.dart';
//import 'buttonSignIn';

class GoToDonOrRec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: SignInButton(),
      ),
    );
  }
}