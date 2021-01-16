import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

import 'package:handMeDown/swipeClothes.dart';

class DonOrRec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Hand Me Down Don or Rec"),
      ),

      body: Center(
        child: new Container(
          child: new Column(
            children: <Widget>[

              new RaisedButton(
                child: new Text("Donator"),
                color:  Colors.blueAccent[600],
                onPressed: () {
                  Navigator.pushNamed(context, '/InfoPage');
                },
              ),

              new RaisedButton(
                child: new Text("Reciever"),
                color:  Colors.blueAccent[600],
                onPressed: () {
                  Navigator.pushNamed(context, '/GarmentList');
                },
              ),
              new RaisedButton(
                child: new Text("Fake go to tinder"),
                color:  Colors.blueAccent[600],
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SwipeClothes()),
                  );
                }
                ),
            ],
          ),
        ),
      ),
    );
  }
}
