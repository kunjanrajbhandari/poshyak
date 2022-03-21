import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/widget/box_widget/box2.dart';

class FlashSalePage extends StatefulWidget {
  FlashSalePage({
    Key? key,
  }) : super(key: key);

  @override
  _FlashSalePageState createState() => _FlashSalePageState();
}

class _FlashSalePageState extends State<FlashSalePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 155,
      width: size.width,
      color: flashSaleColor,
      child: Column(
        children: [
          Padding(
            padding: allPadding / 3,
            child: const Text(
              "Flash Sale",
              style: TextStyle(letterSpacing: 3),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Box2(
                image: DecorationImage(
                    image: AssetImage('assets/image/banner1.png'),
                    fit: BoxFit.cover),
              ),
              Box2(
                image: DecorationImage(
                    image: AssetImage('assets/image/banner1.png'),
                    fit: BoxFit.cover),
              )
            ],
          )
        ],
      ),
    );
  }
}
