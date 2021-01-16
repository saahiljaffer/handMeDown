import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Dropdown menu - GENDER
/// This is the stateful widget that the main application instantiates.
class Dropdown extends StatefulWidget {
  Dropdown({Key key, gender}) : super(key: key);
  var gender = "Male";
  @override
  _DropdownState createState() => _DropdownState();
}

/// This is the private State class that goes with Dropdown.
class _DropdownState extends State<Dropdown> {
  String dropdownValue = 'Unisex';
  var gender = "Male";
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 15,
      elevation: 16,
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w300,
      ),
      underline: Container(
        height: 2,
        color: Color(0xFFEB5729),
      ),
      onChanged: (String newValue) {
        setState(() {
          gender = newValue;
          dropdownValue = newValue;
        });
      },
      items: <String>['Male', 'Female', 'Unisex']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Padding(
            padding: EdgeInsets.only(right: 240.0, left: 10),
            child: Text(
              value,
              textAlign: TextAlign.left,
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
                color: Color(0xFF555555),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

// Dropdown menu - SIZE
/// This is the stateful widget that the main application instantiates.
class DropdownSize extends StatefulWidget {
  DropdownSize({Key key, size}) : super(key: key);

  var size = "Medium";

  @override
  _DropdownSizeState createState() => _DropdownSizeState();
}

/// This is the private State class that goes with Dropdown.
class _DropdownSizeState extends State<DropdownSize> {
  String dropdownValue = 'Medium';
  var size = "Medium";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 15,
      elevation: 16,
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w300,
      ),
      underline: Container(
        height: 2,
        color: Color(0xFFEB5729),
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Extra Small', 'Small', 'Medium', 'Large', 'Extra Large']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Padding(
            padding: EdgeInsets.only(right: 200.0, left: 10),
            child: Text(
              value,
              textAlign: TextAlign.left,
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
                color: Color(0xFF555555),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
