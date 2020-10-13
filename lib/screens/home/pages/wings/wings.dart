

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_nav/res/assets.dart';

class Wings extends StatefulWidget {
  @override
  _WingsState createState() => _WingsState();
}

class _WingsState extends State<Wings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wings",
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
              image: AssetImage(Assets.wings,), fit: BoxFit.cover,
            )
        ),
      ),
    );
  }
}
