import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/view/home/flash_sale/flash_sale.dart';
import 'package:poshyak/widget/box_widget/box2.dart';
import 'package:poshyak/widget/stories/circular_box.dart';

class OurStories extends StatelessWidget {
  const OurStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 355,
      width: MediaQuery.of(context).size.width,
      color: color1,
      child: Column(
        children: [
          Padding(
            padding: allPadding / 2,
            child: Text(
              "Our Stories",
              style: TextStyle(letterSpacing: 3),
            ),
          ),
          SizedBox(
            height: 129,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularBox(
                      image: NetworkImage(
                          'https://images.naptol.com/usr/local/csp/staticContent/product_images/horizontal/750x750/Sumangali-Jewellery-Collection-o1.jpg'),
                      title: "Jwellery",
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 199,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: allPadding,
                    child: Box2(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://pyxis.nymag.com/v1/imgs/c4e/674/1892c1d09ba24378b0d547eeaffa7fac93-EN-US-Worn-S1-Main-Vertical-27x40-RGB-PR.rvertical.w600.jpg'),
                          fit: BoxFit.fill),
                      title: Text('Boutique'),
                      height: 144,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
