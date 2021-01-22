import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String previousPrice;
  final String image;
  final String categoryCode;
  final String productCode;

  ProductCard({
    this.categoryCode,
    this.productCode,
    this.name,
    this.price,
    this.previousPrice,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        // color: Colors.red,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            image,
            alignment: Alignment.center,
            width: 150,
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Color(0xff5F3F3D),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '\$ $previousPrice',
                style: TextStyle(
                  color: Color(0xffB0A8A7),
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(width: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Color(0xffF3E7E6),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text(
                  '\$ $price',
                  style: TextStyle(
                    color: Color(0xffC93F36),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
