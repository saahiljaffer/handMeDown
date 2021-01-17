import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DonOrRec.dart';
import 'InfoPage.dart';
import 'InfoPageWidgets/button.dart';
import 'navbar.dart';

class ConsentPage extends StatefulWidget {
  @override
  _CheckBox createState() => _CheckBox();
}

class _CheckBox extends State<ConsentPage> {
  bool checkBoxOneValue = false;
  bool checkBoxTwoValue = false;
  bool checkBoxThreeValue = false;
  bool checkBoxFourValue = false;
  bool _enabled = false;

  @override
  Widget build(BuildContext context) {
    var _onPressed;

    if (checkBoxOneValue == true &&
        checkBoxTwoValue == true &&
        checkBoxThreeValue == true &&
        checkBoxFourValue == true) {
      setState(() {
        _enabled = true;
      });
    } else {
      setState(() {
        _enabled = false;
      });
    }
    if (_enabled) {
      _onPressed = () {
        Navigator.pushNamed(context, '/DonOrRec');
        // Navigator.pushReplacement(context,
        //     CupertinoPageRoute(builder: (context) => NavigationBarRoot()));
      };
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            'Hand Me Down',
            style: GoogleFonts.quicksand(
              fontSize: 40.0,
              fontWeight: FontWeight.w700,
              color: Color(0xFFEB5729),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          textOne(context),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Transform.scale(
              scale: 1.5,
              child: Checkbox(
                checkColor: Color(0xFFEB5729),
                activeColor: Color(0xfffafafa),
                value: checkBoxOneValue,
                onChanged: (bool value) {
                  setState(() {
                    checkBoxOneValue = value;
                  });
                },
              ),
            ),
            checkOne(context),
          ]),
          Container(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Transform.scale(
              scale: 1.5,
              child: Checkbox(
                checkColor: Color(0xFFEB5729),
                activeColor: Color(0xfffafafa),
                value: checkBoxTwoValue,
                onChanged: (bool value) {
                  setState(() {
                    checkBoxTwoValue = value;
                  });
                },
              ),
            ),
            checkTwo(context),
          ]),
          Container(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Transform.scale(
              scale: 1.5,
              child: Checkbox(
                checkColor: Color(0xFFEB5729),
                activeColor: Color(0xfffafafa),
                value: checkBoxThreeValue,
                onChanged: (bool value) {
                  setState(() {
                    checkBoxThreeValue = value;
                  });
                },
              ),
            ),
            checkThree(context),
          ]),
          Container(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Transform.scale(
              scale: 1.5,
              child: Checkbox(
                checkColor: Color(0xFFEB5729),
                activeColor: Color(0xfffafafa),
                value: checkBoxFourValue,
                onChanged: (bool value) {
                  setState(() {
                    checkBoxFourValue = value;
                  });
                },
              ),
            ),
            checkFour(context),
          ]),
          Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                  left: 20,
                  right: 20,
                  top: 50),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.width * 0.12,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  disabledColor: Color(0xffF9EAE5),
                  color: Color(0xFFEB5729),
                  onPressed: _onPressed,
                  child: Text("Next",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                      )),
                ),
              )),
        ],
      )),
    );
  }
}

Widget textOne(context) {
  return Container(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: 'Thanks! Please read the ',
          style: TextStyle(
            color: Color(0xff555555),
            fontSize: 22,
            fontFamily: 'Quicksand',
          ),
        ),
        TextSpan(
          text: 'Terms\nof Agreement ',
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Color(0xFFEB5729),
            fontSize: 22,
            fontFamily: 'Quicksand',
          ),
        ),
        TextSpan(
          text: '& ',
          style: TextStyle(
            color: Color(0xff555555),
            fontSize: 22,
            fontFamily: 'Quicksand',
          ),
        ),
        TextSpan(
          text: 'Privacy Policy\n',
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Color(0xFFEB5729),
            fontSize: 22,
            fontFamily: 'Quicksand',
          ),
        ),
        TextSpan(
          text: 'carefully! ',
          style: TextStyle(
            color: Color(0xff555555),
            fontSize: 22,
            fontFamily: 'Quicksand',
          ),
        ),
      ])));
}

Widget checkOne(context) {
  return Container(
    padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
    child: Text(
      'I will wear appropriate PPE and act \nin a safe manner at all times when meeting\nindividuals',
      style: TextStyle(
        color: Color(0xff555555),
        fontSize: 14,
        fontFamily: 'Quicksand',
      ),
    ),
  );
}

Widget checkTwo(context) {
  return Container(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: RichText(
          text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: 'I agree to the ',
          style: TextStyle(
            color: Color(0xff555555),
            fontSize: 14,
            fontFamily: 'Quicksand',
          ),
        ),
        TextSpan(
          text: 'Terms and Conditions ',
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Color(0xFFEB5729),
            fontSize: 14,
            fontFamily: 'Quicksand',
          ),
        ),
      ])));
}

Widget checkThree(context) {
  return Container(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: RichText(
          text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: 'I agree to the ',
          style: TextStyle(
            color: Color(0xff555555),
            fontSize: 14,
            fontFamily: 'Quicksand',
          ),
        ),
        TextSpan(
          text: 'Privacy Policy',
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Color(0xFFEB5729),
            fontSize: 14,
            fontFamily: 'Quicksand',
          ),
        ),
      ])));
}

Widget checkFour(context) {
  return Container(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: RichText(
          text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: 'I agree to not resale any items',
          style: TextStyle(
            color: Color(0xff555555),
            fontSize: 14,
            fontFamily: 'Quicksand',
          ),
        ),
      ])));
}
