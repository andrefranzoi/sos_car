import 'package:flutter/material.dart';
import 'package:sos_car/components/custom_suffix_icon.dart';
import 'package:sos_car/components/default_button.dart';
import 'package:sos_car/components/form_error.dart';
import 'package:sos_car/screen/otp/otp_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String fisrtName;
  String lastName;
  String phoneNumber;
  String address;

  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildLastNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPhoneNumberFormField(),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(
              text: "Continuar",
              press: () {
                if (_formKey.currentState.validate()) {
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      keyboardType: TextInputType.phone,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Telefone",
        hintText: "Entre com o seu telefone",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
        labelText: "Sobrenome",
        hintText: "Entre com o seu sobrenome",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => fisrtName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Nome",
        hintText: "Entre com o seu nome",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
