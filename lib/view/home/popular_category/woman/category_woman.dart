import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/widget/box_widget/category_box.dart';
import 'package:poshyak/widget/box_widget/no_borderRadius_box.dart';

class PopularCategoryWoman extends StatefulWidget {
  const PopularCategoryWoman({Key? key}) : super(key: key);

  @override
  _PopularCategoryWomanState createState() => _PopularCategoryWomanState();
}

class _PopularCategoryWomanState extends State<PopularCategoryWoman> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 422,
      decoration: const BoxDecoration(gradient: KGradient),
      child: Column(
        children: [
          Padding(
            padding: allPadding,
            child: Text(
              "Popular Categories Woman",
              style: TextStyle(letterSpacing: 3),
            ),
          ),
          Padding(
            padding: allPadding / 2,
            child: SizedBox(
              height: 377,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: .7,
                      mainAxisSpacing: 4.0,
                      crossAxisCount: 3),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 2.0, left: 2, bottom: 3),
                      child: CategoryBox(
                        images: DecorationImage(
                            image: AssetImage('assets/image/poshyak.jpeg'),
                            fit: BoxFit.fill),
                        category: 'Tops',
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
