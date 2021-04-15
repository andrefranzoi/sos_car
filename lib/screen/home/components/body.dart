import 'package:flutter/material.dart';
import 'package:sos_car/size_config.dart';

import 'categories.dart';
import 'home_header.dart';
import 'news_banner.dart';
import 'popular_products.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(20)),
            NewsBanner(),
            SizedBox(height: getProportionateScreenWidth(20)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(20)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(20)),
            Popularproducts()
          ],
        ),
      ),
    );
  }
}
