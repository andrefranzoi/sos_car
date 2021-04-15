import 'package:flutter/material.dart';
import 'package:sos_car/models/Product.dart';
import 'package:sos_car/screen/details/details_screen.dart';

import '../../../size_config.dart';
import 'product_card.dart';
import 'section_titile.dart';

class Popularproducts extends StatelessWidget {
  const Popularproducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Produtos populares",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => Productcard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments:
                        ProductDetailsArguments(product: demoProducts[index]),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
