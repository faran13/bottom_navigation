

import 'package:flutter_bottom_nav/screens/home/pages/burger/burger_provider.dart';
import 'package:flutter_bottom_nav/screens/home/pages/fruits/fruits_provider.dart';
import 'package:flutter_bottom_nav/screens/home/pages/pizza/pizza_provider.dart';
import 'package:flutter_bottom_nav/screens/home/pages/wings/wings_provider.dart';
import 'package:provider/provider.dart';

final multiProviders = [
  ChangeNotifierProvider<BurgerProvider>(
    create: (_) => BurgerProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<FruitsProvider>(
    create: (_) => FruitsProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<PizzaProvider>(
    create: (_) => PizzaProvider(),
    lazy: true,
  ),
  ChangeNotifierProvider<WingsProvider>(
    create: (_) => WingsProvider(),
    lazy: true,
  ),
];