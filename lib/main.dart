import 'package:flutter/material.dart';
import 'package:portfoliowan/Project/ProjectDesktop.dart';
import 'package:portfoliowan/constants.dart';

import 'Desktop/Desktop.dart';
import 'Mobile/Mobile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wan :D',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF333646),
        fontFamily: 'biko_bold',
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static List<Widget> tabWidgets = <Widget>[
    Info(),
    Projects(),
  ];
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabWidgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Info'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            title: Text('Projects'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Constants.yellow,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1562) {
          return Container(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: SingleChildScrollView(
                child: Desktop(),
              ),
            ),
          );
        } else {
          return Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Mobile(constraints.maxWidth),
            ),
          );
        }
      },
    );
  }
}

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1562) {
          return ProjectDesktopLarge();
        } else if (constraints.maxWidth > 800) {
          return ProjectDesktopMedium();
        } else {
          return ProjectDesktopSmall();
        }
      },
    );
  }
}
