import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonateButton extends StatelessWidget {
  DonateButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 120),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/MapPage');
            },
            color: Color(0xFFEB5729),
            child: const Text(
              'Donate',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),),
            padding: EdgeInsets.fromLTRB(145, 17, 145, 17),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0),),
          ),
        ],
      ),
    );
  }
}



class ReceiveButton extends StatelessWidget {
  ReceiveButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 120),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/MapPage');
            },
            color: Color(0xFFEB5729),
            child: const Text(
              'Next',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),),
            padding: EdgeInsets.fromLTRB(145, 17, 145, 17),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0),),
          ),
        ],
      ),
    );
  }
}

