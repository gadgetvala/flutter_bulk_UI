import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:juice/view/detail_screen/detail_screen.dart';

class CustomGridCard extends StatelessWidget {
  final int id;
  final Color containerColor;
  final int itemPrice;
  final Color darkColor;
  final String image;

  const CustomGridCard({
    Key? key,
    required this.containerColor,
    required this.itemPrice,
    required this.darkColor,
    required this.image,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            DetailScreen.id,
            arguments: id,
          );
        },
        child: SizedBox(
          height: 270,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 80,
                child: Container(
                  height: 170,
                  width: 160,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      Text(
                        '\$  $itemPrice',
                        style: TextStyle(
                          color: darkColor,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '+    0    -',
                        style: TextStyle(
                          color: darkColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 25,
                child: Hero(
                  tag: 1,
                  child: SvgPicture.asset(image),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
