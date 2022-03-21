import 'package:flutter/material.dart';

class Box2 extends StatelessWidget {
  double? height;
  DecorationImage image;
  Text? title;
  Box2({Key? key, this.height, required this.image, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height ?? 105,
          width: MediaQuery.of(context).size.width / 2.2,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(12),
              image: image),
        ),
        title ?? const SizedBox()
      ],
    );
  }
}
