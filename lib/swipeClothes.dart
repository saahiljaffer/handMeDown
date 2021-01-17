import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './GarmentList.dart';
import 'globals.dart' as globals;
import './itemSelected.dart';

const double imageWidth = 300;
const double imageHeight = 300;

class SwipeClothes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    globals.currentGarment = garmentList[0];
    globals.nextGarment = garmentList[1];
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFFE5E5E5),
          body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: EdgeInsets.only(
            right: 59.0,
          ),
          child: Text(
          'Hand Me Down',
          style: GoogleFonts.quicksand(
          fontSize: 40.0,
          fontWeight: FontWeight.w700,
          color: Color(0xFFEB5729),
          ),
          ),

          ),
          SizedBox(
          height: 60.0,
          ),
          Center(
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

                    globals.currentGarment = getNextGarment(globals.currentGarment.assetName);
                  globals.nextGarment = getNextGarment(globals.nextGarment.assetName  );

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
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ItemSelected()));
                        },
                      ),
                    )
                ),
              ),

            ]
          ),
        ),
        Container(
          child: Text(globals.currentGarment.title, style: GoogleFonts.quicksand(
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
            color: Color(0xFFEB5729),),
        ),
        ),
        Container(
          child: Text(globals.currentGarment.description, style: GoogleFonts.quicksand(
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
          color: Colors.black,),
          )
        )
        ]
        ),
      )
    )
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
                  child: Image.asset((
                  globals.currentGarment.assetName
                  )
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
                    Image.asset(globals.nextGarment.assetName),
                  ],
                )
            )
        )
    );
  }
}



String imageToPath(String fileName){
  return 'items/' + fileName + '.jpg';
}

//need to use the garment list
//returns next garment
Garment getNextGarment(String currentAssetName){
  //does not deal with currentAsset is last, and next is first asset
  bool exitOnNext = false;
  for (int index = 0; index < garmentList.length; index++) {
    if (exitOnNext){
      return garmentList[index];
    }

    print(garmentList[index].assetName);
    if (garmentList[index].assetName == currentAssetName)
      exitOnNext = true;
  }
  return garmentList[0];
}
/*
class UpdateText extends StatefulWidget{
  UpdateTextState createState() => UpdateTextState();
}


class UpdateTextState extends State {


}


changeText() {

  setState(() {
    textHolder = 'New Sample Text...';
});
*/
