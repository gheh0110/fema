import 'package:flutter/material.dart';
import 'package:fema/routes.dart';
import 'package:fema/screens/profile/profile_screen.dart';
import 'package:fema/screens/splash/splash_screen.dart';
import 'package:fema/theme.dart';

import 'screens/about_you/about_you.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fema App',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: HomeScreen.routeName,
      //initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
