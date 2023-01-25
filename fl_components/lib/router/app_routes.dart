import 'package:flutter/material.dart';

import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'Listview1 Screen',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt,
        name: 'Listview2 Screen',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card Screen',
        screen: const CardScreen()),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const Listview1Screen(),
  //   'listview2': (context) => const Listview2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> geAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) =>
      MaterialPageRoute(
        builder: (context) => const Listview1Screen(),
      );
}
