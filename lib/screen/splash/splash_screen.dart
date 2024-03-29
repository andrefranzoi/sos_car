import 'package:flutter/material.dart';
import 'package:sos_car/screen/splash/components/body.dart';
import 'package:sos_car/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
