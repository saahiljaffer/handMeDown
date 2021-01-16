import 'package:flutter/material.dart';
import './DonOrRec.dart';

class GoToDonOrRec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('building GoToDonOrRec');
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Google sign in button'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DonOrRec()),
            );
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}