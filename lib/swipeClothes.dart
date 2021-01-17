import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'globals.dart' as globals;

const double imageWidth = 300;
const double imageHeight = 300;

class SwipeClothes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    globals.InitializeQueue();
    globals.currentImage = globals.Items.first;
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.orange),
        home: Scaffold(
            appBar: AppBar(title: Text('Hand Me Down')),
          body: Center(
            child: Row(
            children: <Widget>[
              Container(
                height: 300,
                width: 50,
                color: Colors.black,
                child: DragTarget<int>(
                  builder: (context, List<int> candidateData, rejectedData){
                    return Center(
                      child: Container(
                        height: 300,
                        width: 50,
                        color: Colors.grey[200],
                      ),
                    );
                  },
                  onWillAccept:(data){
                    if(data == null)
                      return false;
                    return true;
                  },
                  onAccept: (data){
                    print('swiped left');
                    globals.currentImage = getNextItem(globals.currentImage);
                    globals.nextImage = getNextItem(globals.nextImage);
                  },
                ),
              ),
            Draggable<int>(
              child: Container(width: imageWidth, height: imageHeight,
                  child: Center(
                      child: SwipeableImage())),
              feedback: Container(width: imageWidth, height: imageHeight,
                child: Center(
                    child: SwipeableImage(fileName: globals.currentImage,)),
              ),
              childWhenDragging: Container(width: imageWidth, height: imageHeight,
                child: Center(
                    child: UnderImage()),
              ),
              data: 0,
            ),
              Container(
                child: Align(
                    alignment: Alignment.centerRight,
                    child:  Container(
                      height: 300,
                      width: 50,
                      color: Colors.black,
                      child: DragTarget<int>(
                        builder: (context, List<int> candidateData, rejectedData){
                          return Center(
                            child: Container(
                              height: 300,
                              width: 50,
                              color: Colors.grey[200],
                            ),
                          );
                        },
                        onWillAccept:(data){
                          if(data == null)
                            return false;
                          return true;
                        },
                        onAccept: (data){
                          print('swiped right');

                        },
                      ),
                    )
                ),
              )
            ]
          ),
        ),
        ),
      );
  }
}

class MakeCard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Card(
      color: Colors.white,
      elevation: 5,
      child: Padding(
        padding: new EdgeInsets.all(15),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: new EdgeInsets.only(bottom: 10),
              child: Image(
                image: AssetImage(garment.assetName),
                width: 300,
                height: 100,
              ),
            ),
            Text(garment.title, style: TextStyle(fontSize: 24.0)),
            Text(garment.description, style: TextStyle(fontSize: 16.0)),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RaisedButton(
                  child: const Text('Edit'),
                  onPressed: () {/* ... */},
                ),
                RaisedButton(
                  child: const Text('Delete'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class SwipeableImage extends StatelessWidget{
  final String fileName;
  SwipeableImage({this.fileName});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff000000),
                      width: 4,
                    )
                  ),
                  child: Image.asset(imageToPath((globals.currentImage))
                      , fit: BoxFit.cover),

                )
          ],
        ),
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
                    Image.asset(imageToPath(globals.nextImage)),
                  ],
                )
            )
        )
    );
  }
}


String getNextItem(String currentItem){
  //temp code, just alternates
  String temp = globals.Items.first;
  globals.Items.removeFirst();
  print(globals.Items);
  globals.Items.add(temp);
  globals.currentImage = temp;
  globals.nextImage = globals.Items.first;
  return temp;
}

String imageToPath(String fileName){
  return 'items/' + fileName + '.jpg';
}