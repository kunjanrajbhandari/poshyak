import 'package:flutter/cupertino.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/widget/box_widget/box1.dart';

class LatestKids extends StatelessWidget {
  const LatestKids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: 255,
        color: color1,
        child: Column(
          children: [
            Padding(
              padding: allPadding / 2,
              child: Text(
                "Latest Kids",
                style: TextStyle(letterSpacing: 3),
              ),
            ),
            SizedBox(
              height: 211,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: Box1(
                        borderraidus: 15,
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
