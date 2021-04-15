import 'package:flutter/material.dart';

import '../size_config.dart';

class RounedIconBtn extends StatelessWidget {
  const RounedIconBtn({
    Key key,
    @required this.iconData,
    @required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        color: Colors.white,
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
