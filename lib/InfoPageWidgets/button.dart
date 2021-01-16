import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 120),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/GarmentList');
            },
            color: Color(0xFFEB5729),
            child: const Text(
              'Next',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            padding: EdgeInsets.fromLTRB(145, 17, 145, 17),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0),
            ),
          ),
        ],
      ),
    );
  }
}
