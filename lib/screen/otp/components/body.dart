import 'package:flutter/material.dart';
import 'package:sos_car/constants.dart';
import 'package:sos_car/size_config.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "Ativação do app",
                style: headingStyle,
              ),
              Text("enviamos seu código para +55 16 9 9698 ****"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Resetar código de ativação",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Este código irá expirar em "),
        TweenAnimationBuilder<double>(
          duration: const Duration(seconds: 30),
          tween: Tween(begin: 30, end: 0),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
