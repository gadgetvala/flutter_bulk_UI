import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroContainer extends StatelessWidget {
  final Color normalColor;
  final Color darkColor;
  final int price;
  final String image;
  final int id;

  const HeroContainer({
    Key? key,
    required this.normalColor,
    required this.darkColor,
    required this.price,
    required this.image,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mq = MediaQuery.of(context).size;

    return Expanded(
      child: SizedBox(
        height: 270,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 100,
              child: Container(
                height: 200,
                width: mq.width - 40,
                decoration: BoxDecoration(
                  color: normalColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '\$ $price',
                          style: TextStyle(
                            color: darkColor,
                            fontSize: 50,
                          ),
                        ),
                        Text(
                          '+    0    -',
                          style: TextStyle(
                            color: darkColor,
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -50,
              left: 80,
              child: Hero(
                tag: id,
                child: SvgPicture.asset(
                  image,
                  height: 250,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
