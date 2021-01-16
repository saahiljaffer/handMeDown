import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './swipedetector.dart';

const double imageWidth = 300;
const double imageHeight = 300;

class SwipeClothes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.orange),
        home: Scaffold(
            appBar: AppBar(title: Text('Hand Me Down')),
          body: Center(
            child: Column(
            children: <Widget>[
            Draggable(
              child: Container(width: imageWidth, height: imageHeight,
                  child: Center(
                      child: SwipeableImage())),
              feedback: Container(width: imageWidth, height: imageHeight,
                child: Center(
                    child: SwipeableImage()),
              ),
              childWhenDragging: Container(width: imageWidth, height: imageHeight,
                child: Center(
                    child: UnderImage()),
              ),
            ),
              Align(
                  widthFactor: double.infinity,
                  heightFactor: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.black ,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,

                  )
                )
              )
            ]
          ),
        ),
        ),
      );
  }
}

class SwipeableImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
              children: <Widget>[
          Image.asset('items/jacket.jpg'),
          ],
        )
      )
      )
  );
  }
}
class UnderImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                  children: <Widget>[
                    Image.asset('items/shirt.jpg'),
                  ],
                )
            )
        )
    );
  }
}
