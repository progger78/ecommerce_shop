

import 'package:ecommerce_shop/screens/detail_product_screen/components/detail_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/models/products.dart';
import 'components/custom_app_bar.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({Key? key, required this.pageId}) : super(key: key);

  final int pageId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: CustomAppBar(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: Consumer<Products>(
          builder: (context, popularProduct, child) => CustomAppbar(
            rating: popularProduct.products[pageId].rating!,
          ),
        ),
      ),
      body: DetailBody(pageId: pageId),
    );
  }
}

