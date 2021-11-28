import 'package:fema/theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'delete.dart';
import 'routes.dart';
import 'screens/home/home_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  var isLoggedIn = (prefs.getBool('isLoggedIn') == null)
      ? false
      : prefs.getBool('isLoggedIn');
  runApp(MaterialApp(
    title: "FEMA APP",
    theme: theme(),
    debugShowCheckedModeBanner: false,
    home: isLoggedIn == null ? HomeScreen() : SplashScreen(),
    routes: routes,
  ));
}
