import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_nav/screens/home/home_provider.dart';
import 'package:flutter_bottom_nav/screens/home/pages/calendar.dart';
import 'package:flutter_bottom_nav/screens/home/pages/home.dart';
import 'package:flutter_bottom_nav/screens/home/pages/message.dart';
import 'package:flutter_bottom_nav/screens/home/pages/settings.dart';
import 'package:provider/provider.dart';

import 'home_components.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeComponents homeComponents;
  HomeProvider homeProvider;
  final List<Widget> childerns = [
    HomeScreen(),
    Settings(),
    Message(),
    Calendar(),
  ];
  int _currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = 0;
    homeComponents = HomeComponents();
    homeProvider = Provider.of<HomeProvider>(context, listen: false);
    homeProvider.init(context: context);
  }

  void onTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    homeProvider = Provider.of<HomeProvider>(context, listen: false);
    homeProvider.initializeResources(context);
    return Scaffold(
      body: childerns[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.redAccent,), title: Text(""),),
          BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.redAccent),title: Text(""),),
          BottomNavigationBarItem(icon: Icon(Icons.message, color: Colors.redAccent),title: Text(""),),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today, color: Colors.redAccent),title: Text(""),),
        ],
      ),
    );
  }
}
