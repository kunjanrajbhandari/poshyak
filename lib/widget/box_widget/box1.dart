import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';

class Box1 extends StatelessWidget {
  double? height;
  double? width;
  double? borderraidus;
  Box1({Key? key, this.height, this.width, this.borderraidus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 3.5,
      child: Column(
        children: [
          Container(
            width: width ?? size.width / 3.5,
            height: height ?? 144.0,
            decoration: BoxDecoration(
                boxShadow: [
                  elevation(
                    offsetX: 0,
                  )
                ],
                color: Colors.greenAccent,
                image: const DecorationImage(
                    image: AssetImage('assets/image/banner1.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(borderraidus ?? 12.0)),
          ),
          Padding(
            padding: allPadding / 2,
            child: Center(
              child: Text(
                limitedTitle(4, "GREY Hoodie for women women women"),
                style: const TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Text(
            "RS. 1222",
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
