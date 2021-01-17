import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'InfoPageWidgets/dropdownmenu.dart';
import 'InfoPageWidgets/button.dart';
import 'GarmentList.dart';

void main() {
  runApp(AddItem());
}

class AddItem extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  var size = "Medium";
  var gender = "Female";

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                'Add Item',
                style: GoogleFonts.quicksand(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFEB5729),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Please enter some information:',
                textAlign: TextAlign.left,
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                  color: Color(0xFF555555),
                ),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Title',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
                // Spacer(),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(hintText: ''),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Description',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
                // Spacer(),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: TextField(
                controller: descriptionController,
                decoration: InputDecoration(hintText: ''),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Gender',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Dropdown(gender: gender),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Size',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                DropdownSize(size: size),
              ],
            ),

            // SizedBox(
            //   height: 70.0,
            // ),
            Padding(
              padding: EdgeInsets.all(20),
              child: new RaisedButton(
                onPressed: () {
                  garmentList.add(
                    new Garment(
                        title: titleController.text,
                        description: descriptionController.text,
                        size: size,
                        gender: gender,
                        location: "Toronto",
                        assetName: "items/jacket.jpg"),
                  );
                  Navigator.pushNamed(context, '/GarmentList');
                },
                color: Colors.white54,
                child: const Text(
                  'Next',
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
            ),
          ],
        ),
      ),
    ));
  }
}
