import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sos_car/components/default_button.dart';
import 'package:sos_car/models/Product.dart';
import 'package:sos_car/size_config.dart';

import 'color_detail.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImage(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          top: getProportionateScreenWidth(15),
                          bottom: getProportionateScreenWidth(40),
                        ),
                        child: DefaultButton(
                          text: "Adicionar",
                          press: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
