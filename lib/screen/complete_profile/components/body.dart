import 'package:flutter/material.dart';
import 'package:sos_car/constants.dart';
import 'package:sos_car/size_config.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            Text(
              'Complete seu perfil',
              style: headingStyle,
            ),
            Text(
              'Preencha seus dados ou continue\ncom a mídia social',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            CompleteProfileForm(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(
              "Ao continuar, você confirma que concorda\ncom nosso Termo e Condição",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
