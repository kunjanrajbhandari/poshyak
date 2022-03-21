import 'package:flutter/material.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 22,
      height: 179,
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
              image: AssetImage('assets/image/banner1.png'),
              fit: BoxFit.cover)),
    );
  }
}
