import 'package:flutter/material.dart';
import 'package:sos_car/components/custom_bottom_nav_bar.dart';
import 'package:sos_car/enums.dart';

import 'components/Body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '\profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
