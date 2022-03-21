import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/widget/box_widget/box1.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 244,
      width: size.width,
      decoration: const BoxDecoration(
          gradient: RadialGradient(
        radius: 3,
        colors: [Color(0xffFFF1EE), Color.fromARGB(255, 229, 219, 252)],
      )),
      child: Column(
        children: [
          Padding(
            padding: allPadding,
            child: Text(
              "Trending",
              style: TextStyle(letterSpacing: 3),
            ),
          ),
          // const SizedBox(
          //   height: 11,
          // ),
          SizedBox(
            height: 199,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8),
                    child: Box1(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
