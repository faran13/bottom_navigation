import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_nav/res/assets.dart';

class Burger extends StatefulWidget {
  @override
  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Burgers",
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.burger,), fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}
