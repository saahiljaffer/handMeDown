import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'infoPageTwo.dart';
import 'main.dart';

import 'package:handMeDown/swipeClothes.dart';

class DonOrRec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Container(
          child: new Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 5, top: 130, bottom: 19),
                  child: Image(
                    image: AssetImage('items/logo.png'),
                    width: 300,
                    height: 100,
                  )),
              Padding(
                padding: EdgeInsets.only(left: 5, top: 0, bottom: 19),
                child: Text(
                  'Hand Me Down',
                  style: GoogleFonts.quicksand(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFEB5729),
                  ),
                ),
              ),

              // const SizedBox(height: 200),

              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                      left: 20,
                      right: 20,
                      top: 50),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: MediaQuery.of(context).size.width * 0.2,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      disabledColor: Color(0xffF9EAE5),
                      color: Color(0xFFEB5729),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => InfoPageTwo(
                                      whichPage: false,
                                    )));
                      },
                      child: Text("Donate",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Quicksand',
                          )),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                      left: 20,
                      right: 20,
                      top: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: MediaQuery.of(context).size.width * 0.2,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      disabledColor: Color(0xffF9EAE5),
                      color: Color(0xFFEB5729),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => InfoPageTwo(
                                      whichPage: true,
                                    )));
                      },
                      child: Text("Recieve",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Quicksand',
                          )),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
