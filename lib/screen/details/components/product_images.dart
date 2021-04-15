import 'package:flutter/material.dart';
import 'package:sos_car/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImageState createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectedProduct = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(200),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              widget.product.images[selectedProduct],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallPreview(index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedProduct = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: selectedProduct == index
                  ? kPrimaryColor
                  : Colors.transparent),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
