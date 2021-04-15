import 'package:flutter/widgets.dart';
import 'package:sos_car/screen/complete_profile/complete_profile_screen.dart';
import 'package:sos_car/screen/details/details_screen.dart';
import 'package:sos_car/screen/forgot_password/forgot_password_screen.dart';
import 'package:sos_car/screen/home/home_screen.dart';
import 'package:sos_car/screen/login_success/login_success_screen.dart';
import 'package:sos_car/screen/otp/otp_screen.dart';
import 'package:sos_car/screen/profile/profile_screen.dart';
import 'package:sos_car/screen/sign_up/sign_up_screen.dart';
import 'package:sos_car/screen/splash/splash_screen.dart';
import 'screen/cart/cart_screen.dart';
import 'screen/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
