import 'package:flutter/material.dart';

import '../../../models/products.dart';
import '../../../utils/utils.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  var _selectedProduct = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(250),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(widget.product.images![_selectedProduct]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                widget.product.images!.length,
                (index) => buildImagePreview(index),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildImagePreview(index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedProduct = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: Dimensions.width10),
        height: getProportionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: _selectedProduct == index
                  ? AppColors.kPrimaryColor
                  : Colors.transparent),
          borderRadius: BorderRadius.circular(Dimensions.radius15 - 5),
        ),
        child: Image.asset(widget.product.images![index]),
      ),
    );
  }
}
