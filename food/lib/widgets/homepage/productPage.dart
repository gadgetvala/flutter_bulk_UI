import 'package:flutter/material.dart';

import './../../models/data.dart';
import './productCard.dart';

class ProductPage extends StatelessWidget {
  String currentSelectedItemCode;
  List products;

  ProductPage(String code) {
    currentSelectedItemCode = code;
    products = Data.products.where((i) => i['categoryCode'] == code).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 400,
        child: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: products.length,
          itemBuilder: (ctx, i) => ProductCard(
            categoryCode: products[i]['categoryCode'],
            productCode: products[i]['productCode'],
            name: products[i]['productName'],
            price: products[i]['newPrive'],
            previousPrice: products[i]['previewPrice'],
            image: products[i]['imgLink'],
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
