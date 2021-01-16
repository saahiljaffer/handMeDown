import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonOrRec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('We are in done or rec');
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
                onPressed: null,
              ),

              new RaisedButton(
                child: new Text("Reciever"),
                color:  Colors.blueAccent[600],
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}