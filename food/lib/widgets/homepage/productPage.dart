import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String currentSelectedItemCode;

  ProductPage(this.currentSelectedItemCode);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: continentList.length,
          itemBuilder: (ctx, i) => ContinentItem(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 0.7,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
