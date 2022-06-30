import 'package:flutter/material.dart';
import 'package:flutter_components_app/models/models.dart';
import 'package:flutter_components_app/screens/screens.dart';

class AppRoutes {
  static const  initialRoute = 'HomeScreen';

  static final menuOptions = <MenuOption> [
  //  TODO borrar home
    MenuOption(icon: Icons.home, name: 'Home Screen', route: 'HomeScreen', screen: const HomeScreen()),
    MenuOption(icon: Icons.list_alt, name: 'ListView One', route: 'ListView1', screen: const ListViewOneScreen()),
    MenuOption(icon: Icons.list, name: 'ListView Two', route: 'ListView2', screen: const ListViewTwoScreen()),
    MenuOption(icon: Icons.add_alarm_outlined, name: 'Alerts', route: 'AlertScreen', screen: const AlertScreen()),
    MenuOption(icon: Icons.credit_card, name: 'Cards', route: 'CardsScreen', screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
      for (final option in menuOptions) {
        appRoutes.addAll({
          option.route: (BuildContext context) => option.screen
        });
      }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  // 'HomeScreen': (BuildContext context) => const HomeScreen(),
  // 'ListView1': (BuildContext context) => const ListViewOneScreen(),
  // 'ListView2': (BuildContext context) => const ListViewTwoScreen(),
  // 'AlertScreen': (BuildContext context) => const AlertScreen(),
  // 'CardScreen': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
    builder: (context) => const AlertScreen()
    );
  }
}