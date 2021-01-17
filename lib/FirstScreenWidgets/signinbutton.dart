import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInButton extends StatelessWidget {
  SignInButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 150),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/DonOrRec');
            },
            color: Colors.white54,
            child: const Text(
              'Sign in with Google',
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
        ],
      ),
    );
  }
}
