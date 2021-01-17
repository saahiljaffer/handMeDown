import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileTabState();
  }
}

class ProfileTabState extends State<ProfileTab> {
  // Title of the page: 'Profile'
  Widget title() {
    return Text(
      'Profile',
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Color(0xffeb5729),
        fontSize: 36,
        fontFamily: 'Quicksand',
      ),
    );
  }

  // Returns user's photo, name and member status
  Widget profileCover(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Text(
        "Jon Snow",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Color(0xffeb5729),
          fontSize: 24.0,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
        ),
      ),
      margin: EdgeInsets.only(left: 15.0),
    );
  }

  // User's e-mail and phone #
  Widget contactInfo() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Text('Contact Info',
                        style: TextStyle(
                          color: Color(0xffeb5729),
                          fontSize: 24.0,
                          fontFamily: 'Quicksand',
                        )),
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  child: FlatButton(
                    padding: EdgeInsets.only(left: 2.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Align(
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                color: Color(0xFFEB5729),
                                fontSize: 18.0,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            child: Icon(
                              Icons.create,
                              color: Color(0xFFEB5729),
                              size: 25.0,
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {}, // TO DO
                  ),
                ),
              ),
            ],
          ),
          Divider(thickness: 1.0, indent: 18.0, endIndent: 18.0, height: 0.0),
          Container(margin: EdgeInsets.only(bottom: 20.0)),
          contactInfoRow(Icons.phonelink_ring, "289-400-1969"),
          Container(margin: EdgeInsets.only(bottom: 10.0)),
          contactInfoRow(Icons.mail_outline, "jonsnow@handmedown.com"),
        ]);
  }

  Widget contactInfoRow(IconData iconType, String info) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            //margin: EdgeInsets.only(left: 15.0),
            child: Icon(
              iconType,
              color: Color(0xFF555555),
              size: 30.0,
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Text(
            info,
            style: TextStyle(
              color: Color(0xff555555),
              fontSize: 18.0,
              fontFamily: 'Quicksand',
            ),
          ),
        ),
      ],
    );
  }

  Widget signOutButton() {
    return OutlineButton(
      borderSide: BorderSide(
        color: Color(0xFFEB5729),
        width: 1.5,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(13.0)),
      ),
      child: Text(
        'SIGN OUT',
        style: TextStyle(
          color: Color(0xFFEB5729),
          fontSize: 18.0,
          fontFamily: 'Quicksand',
        ),
      ),
      onPressed: () {}, // TO DO
    );
  }

  Widget buildUserProfile(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 40.0, left: 15.0),
            child: title(),
          ),
          Container(margin: EdgeInsets.only(bottom: 40.0)),
          profileCover(context),
          Container(margin: EdgeInsets.only(bottom: 70.0)),
          contactInfo(),
          Container(margin: EdgeInsets.only(bottom: 140.0)),
          signOutButton(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Initiate getVolunteerWithId, show loading page while data is fetched
    // build user profile when request complete

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: buildUserProfile(context)),
    );
    // } else {
    //   currUser = snapshot.data;
    // return buildUserProfile(context);
    // }
  }
}
