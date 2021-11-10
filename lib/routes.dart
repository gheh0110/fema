import 'package:fema/screens/about_you/about_you.dart';
import 'package:fema/screens/complete_details_success/complete_details_success_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:fema/screens/cart/cart_screen.dart';
import 'package:fema/screens/complete_profile/complete_profile_screen.dart';
import 'package:fema/screens/details/details_screen.dart';
import 'package:fema/screens/forgot_password/forgot_password_screen.dart';
import 'package:fema/screens/home/home_screen.dart';
import 'package:fema/screens/login_success/login_success_screen.dart';
import 'package:fema/screens/otp/otp_screen.dart';
import 'package:fema/screens/profile/profile_screen.dart';
import 'package:fema/screens/sign_in/sign_in_screen.dart';
import 'package:fema/screens/splash/splash_screen.dart';

import 'screens/profile_setting.dart/profile_setting.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  AboutYouScreen.routeName: (context) => const AboutYouScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) =>  const ProfileScreen(),
  CompleteDetailsSuccessScreen.routeName: (context) => const CompleteDetailsSuccessScreen(),
  ProfileSetting.routeName: (context) => const ProfileSetting(),
};
