import 'package:flutter/widgets.dart';

//screens
import 'main.dart';
import 'screens/breakfast_details/breakfast_details.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
//import 'screens/details/details_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/profile_setting.dart/profile_setting.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/about_you/about_you.dart';
import 'screens/complete_details_success/complete_details_success_screen.dart';

// We use name route 
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  AboutScreen.routeName: (context) => const AboutScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProfileScreen.routeName: (context) =>  const ProfileScreen(),
  CompleteDetailsSuccessScreen.routeName: (context) => const CompleteDetailsSuccessScreen(),
  ProfileSetting.routeName: (context) => const ProfileSetting(),
  BreakfastDetailsScreen.routeName: (context) => const BreakfastDetailsScreen(),
};
