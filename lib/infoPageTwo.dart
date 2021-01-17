import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

import 'InfoPageWidgets/button.dart';
import 'InfoPageWidgets/number_text_input.dart';

class InfoPageTwo extends StatefulWidget {
  final bool whichPage;
  InfoPageTwo({Key key, @required this.whichPage}) : super(key: key);
  @override
  _InfoPageTwo createState() => _InfoPageTwo(whichPage: whichPage);
}

class _InfoPageTwo extends State<InfoPageTwo> {
  final bool whichPage;
  _InfoPageTwo({Key key, @required this.whichPage}) : super();
  List<String> ontarioCities = [
    "Ajax",
    "Atikokan",
    "Barrie",
    "Belleville",
    "Blandford-Blenheim",
    "Blind River",
    "Brampton",
    "Brant",
    "Brantford",
    "Brock",
    "Brockville",
    "Burlington",
    "Caledon",
    "Cambridge",
    "Chatham-Kent",
    "Chesterville",
    "Clarington",
    "Cobourg",
    "Cochrane",
    "Collingwood",
    "Cornwall",
    "Cumberland",
    "Deep River",
    "Dundas",
    "Durham",
    "Dymond",
    "Ear Falls",
    "East Gwillimbury",
    "East Zorra-Tavistock",
    "Elgin",
    "Elliot Lake",
    "Flamborough",
    "Fort Erie",
    "Fort Frances",
    "Gananoque",
    "Georgina",
    "Glanbrook",
    "Gloucester",
    "Goulbourn",
    "Gravenhurst",
    "Grimsby",
    "Guelph",
    "Haldimand-Norfork",
    "Halton Hills",
    "Halton",
    "Hamilton",
    "Hamilton-Wentworth",
    "Hearst",
    "Huntsville",
    "Ingersoll",
    "James",
    "Kanata",
    "Kincardine",
    "King",
    "Kingston",
    "Kirkland Lake",
    "Kitchener",
    "Larder Lake",
    "Leamington",
    "Lennox-Addington",
    "Lincoln",
    "Lindsay",
    "London",
    "Loyalist Township",
    "Markham",
    "Merrickville",
    "Metro Toronto",
    "Milton",
    "Mississauga",
    "Nepean",
    "Newmarket",
    "Niagara Falls",
    "Niagara",
    "Niagara-on-the-Lake",
    "North Bay",
    "North Dorchester",
    "North Dumfries",
    "North York",
    "Norwich",
    "Oakville",
    "Orangeville",
    "Orillia",
    "Osgoode",
    "Oshawa",
    "Ottawa",
    "Ottawa-Carleton",
    "Owen Sound",
    "Peterborough",
    "Pickering",
    "Port Bruce",
    "Port Burwell",
    "Port Colborne",
    "Port Hope",
    "Prince Edward",
    "Quinte West",
    "Renfrew",
    "Richmond Hill",
    "Sarnia",
    "Sault Ste. Marie",
    "Scarborough",
    "Scugog",
    "Smiths Falls",
    "Souix Lookout CoC Sioux Lookout",
    "South-West Oxford",
    "St. Catharines",
    "St. Thomas",
    "Stoney Creek",
    "Stratford",
    "Sudbury",
    "Temagami",
    "Thorold",
    "Thunder Bay",
    "Tillsonburg",
    "Timmins",
    "Toronto",
    "Uxbridge",
    "Vaughan",
    "Wainfleet",
    "Wasaga Beach",
    "Waterloo",
    "Welland",
    "Wellesley",
    "West Carleton",
    "West Lincoln",
    "Whitby",
    "Wilmot",
    "Windsor",
    "Woolwich",
    "York"
  ];
  final formKey = new GlobalKey<FormState>();

  String phoneNo, verificationId, smsCode;

  bool codeSent = false;
  bool error = false;
  bool _enabled = false;
  NumberTextInputFormatter _phoneNumberFormatter = NumberTextInputFormatter();

  Widget firstNameField(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.07,
            right: MediaQuery.of(context).size.width * 0.07),
        child: TextFormField(
          cursorColor: Color(0xffeb5729),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFB0B0B0)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Color(0xffeb5729),
            )),
            labelText: '٭ Legal first name',
            labelStyle: TextStyle(
              color: Color(0xff555555),
              fontSize: 14,
              fontFamily: "Quicksand",
            ),
          ),
          validator: (String value) {
            if (value.length <= 0) {
              return 'Please enter a first name';
            }
            return null;
          },
        ));
  }

  Widget lastNameField(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.07,
            right: MediaQuery.of(context).size.width * 0.07),
        child: TextFormField(
          cursorColor: Color(0xffeb5729),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFB0B0B0)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Color(0xffeb5729),
            )),
            labelText: '٭ Legal last name',
            labelStyle: TextStyle(
              color: Color(0xff555555),
              fontSize: 14,
              fontFamily: "Quicksand",
            ),
          ),
          validator: (String value) {
            if (value.length <= 0) {
              return 'Please enter a last name';
            }
            return null;
          },
        ));
  }

  Widget citiesField(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.07,
            right: MediaQuery.of(context).size.width * 0.07),
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFB0B0B0)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Color(0xffeb5729),
            )),
            focusColor: Color(0xffeb5729),
            labelText: 'Location',
            labelStyle: TextStyle(
              color: Color(0xff555555),
              fontSize: 14,
              fontFamily: "Quicksand",
            ),
          ),
          onChanged: (String value) {
            // volunteer.city = value;
          },
          validator: (String value) {
            if (value == null) {
              return 'Please enter the nearest location';
            }
            return null;
          },
          items: ontarioCities.map((String value) {
            return new DropdownMenuItem<String>(
              value: value,
              child: new Text(
                value,
                style: TextStyle(
                  color: Color(0xff555555),
                  fontSize: 15,
                  fontFamily: "Quicksand",
                ),
              ),
            );
          }).toList(),
        ));
  }

  Widget numberField(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: TextField(
                    cursorColor: Color(0xFFEB5729),
                    style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 1.5,
                    ),
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                      _phoneNumberFormatter,
                    ],
                    keyboardType: TextInputType.number, //text or number???
                    autofocus: false,
                    onChanged: (text) {
                      /* checking if numbers entered are a phone number then enabling the next button 
                                    to send text*/
                      if (text.length == 14) {
                        FocusScope.of(context).requestFocus(FocusNode());
                      }
                      setState(() {
                        this.phoneNo = '+1 $text';
                      });
                    },
                    decoration: InputDecoration(
                      hintText: '(___)___-____',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFFEB5729),
                      )),
                    ))),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return FlutterEasyLoading(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: AppBar(
                elevation: 0,
                brightness: Brightness.light,
                backgroundColor: Colors.white,
              ),
            ),
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.029,
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
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                          child: Text(
                            "Now we'll need some basic info",
                            style: TextStyle(
                              color: Color(0xff555555),
                              fontSize: 20,
                              fontFamily: 'Quicksand',
                            ),
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                          child: Text(
                            "٭ = required",
                            style: TextStyle(
                              color: Color(0xff555555),
                              fontSize: 12,
                              fontFamily: 'Quicksand',
                            ),
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      firstNameField(context),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      lastNameField(context),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      numberField(context),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      citiesField(context),
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
                              onPressed: () {
                                whichPage
                                    ? Navigator.pushNamed(context, '/InfoPage')
                                    : Navigator.pushNamed(
                                        context, '/GarmentList');
                              },
                              child: Text("Next",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Quicksand',
                                  )),
                            ),
                          )),
                    ]))));
  }
}
