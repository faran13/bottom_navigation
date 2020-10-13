import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_nav/screens/home/home_provider.dart';
import 'package:flutter_bottom_nav/screens/home/pages/wings/wings.dart';
import 'package:flutter_bottom_nav/screens/home/pages/burger/burger.dart';
import 'package:flutter_bottom_nav/screens/home/pages/fruits/fruits.dart';
import 'package:flutter_bottom_nav/screens/home/pages/pizza/pizza.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
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
    Burger(),
    Pizza(),
    Fruits(),
    Wings(),
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
          BottomNavigationBarItem(icon: Icon(FontAwesome5.hamburger, color: Colors.redAccent,), title: Text(""),),
          BottomNavigationBarItem(icon: Icon(FontAwesome5.pizza_slice, color: Colors.redAccent),title: Text(""),),
          BottomNavigationBarItem(icon: Icon(FontAwesome5.apple_alt, color: Colors.redAccent),title: Text(""),),
          BottomNavigationBarItem(icon: Icon(RpgAwesome.dragon_wing, color: Colors.redAccent),title: Text(""),),
        ],
      ),
    );
  }
}
