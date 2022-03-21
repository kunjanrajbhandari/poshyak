import 'package:flutter/cupertino.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/widget/box_widget/no_borderRadius_box.dart';

class OurBrandPage extends StatelessWidget {
  const OurBrandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 255,
      decoration: const BoxDecoration(gradient: KGradient),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: allPadding / 2,
            child: Center(
              child: const Text(
                "Our Brands",
                style: TextStyle(letterSpacing: 3),
              ),
            ),
          ),
          SizedBox(
            height: 199,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: const EdgeInsets.only(right: 2.0, left: 2),
                    child: Box3(),
                  );
                }),
          ),
          Padding(
            padding: rightPadding,
            child: const Text(
              "View All",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}
