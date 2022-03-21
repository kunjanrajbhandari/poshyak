import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/widget/box_widget/box1.dart';

class RecommendationForYou extends StatelessWidget {
  const RecommendationForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 244.0,
      color: const Color(0xffFDEFEE),
      child: Column(
        children: [
          const Text(
            "Recommendation for you",
            style: TextStyle(letterSpacing: 3),
          ),
          const SizedBox(
            height: 11,
          ),
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
          )
        ],
      ),
    );
  }

  // Widget RecommendationItem(context) {
  //   final size = MediaQuery.of(context).size;
  //   return ;
  // }
}
