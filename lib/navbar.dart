import 'package:flutter/material.dart';
import 'package:handMeDown/profilePage.dart';
import 'DonOrRec.dart';

class NavigationBarRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HandMeDown',
      home: NavigationContainer(),
    );
  }
}

class NavigationContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationContainerState();
  }
}

class NavBarDelegate {
  void selectTab(int index) {}
}

class _NavigationContainerState extends State<NavigationContainer>
    implements NavBarDelegate {
  int _currentIndex = 0;
  List<Widget> _tabs;

  _NavigationContainerState() {
    _tabs = [
      DonOrRec(),
      ProfileTab(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xffeb5729),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff555555),
              size: 25.0,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Color(0xffeb5729),
              size: 25.0,
            ),
            title:
                Text('Home', style: TextStyle(fontFamily: 'Red Hat Display')),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff555555),
              size: 26.0,
            ),
            activeIcon: Icon(
              Icons.person,
              color: Color(0xffeb5729),
              size: 26.0,
            ),
            title: Text('Profile',
                style: TextStyle(fontFamily: 'Red Hat Display')),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void selectTab(int index) {
    onTabTapped(index);
  }
}
