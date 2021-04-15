import 'package:flutter/material.dart';
import 'package:sos_car/screen/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class NotAccountText extends StatelessWidget {
  const NotAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "não possui uma conta? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            SignUpScreen.routeName,
          ),
          child: Text(
            "Crie uma",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
