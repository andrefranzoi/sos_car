import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sos_car/components/custom_suffix_icon.dart';
import 'package:sos_car/components/default_button.dart';
import 'package:sos_car/components/form_error.dart';
import 'package:sos_car/components/not_account_text.dart';
import 'package:sos_car/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          Text(
            "Esqueci minha senha",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(24),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "por favor digite seu e-mail e nós lhe enviaremos.\num link para retornar à sua conta",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          ForgotPassForm(),
        ],
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            TextFormField(
              onSaved: (newValue) => email = newValue,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty && !errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Entre com seu e-mail",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState.validate()) {}
                }),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            NotAccountText(),
          ],
        ),
      ),
    );
  }
}
