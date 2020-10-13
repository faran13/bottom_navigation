

import 'package:flutter/cupertino.dart';
import 'package:flutter_bottom_nav/res/sizes.dart';

class HomeProvider extends ChangeNotifier{

  BuildContext context;

  init({@required BuildContext context}){
    this.context = context;
  }

  initializeResources(BuildContext context){
    AppSizes.initializeSize(context);
  }
}