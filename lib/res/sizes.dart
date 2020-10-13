import 'package:flutter/cupertino.dart';

//This object must be initialized before using

class AppSizes{
  static BuildContext _context;
  static Size _screenSize;
  static double width;
  static double height;

  static AppSizes _appSizes;

  static initializeSize(context){
    _context = context;
    _screenSize = MediaQuery.of(_context).size;

    width = _screenSize.width;
    height = _screenSize.height;
  }

  static refreshSize(){
    _screenSize = MediaQuery.of(_context).size;

    width = _screenSize.width;
    height = _screenSize.height;
  }

  //Get Percentage of Screen Size
  static getPercentageWidth(double percentage) => percentage * width;
  static getPercentageHeight(double percentage) => percentage* height;


  //Font Sizes
  static final oneTextSize = getPercentageWidth(0.08);
  static final twoTextSize = getPercentageWidth(0.07);
  static final threeTextSize = getPercentageWidth(0.06);
  static final fourTextSize = getPercentageWidth(0.05);
  static final fifthTextSize = getPercentageWidth(0.04);
}