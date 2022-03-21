import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/widget/box_widget/category_box.dart';

class PopularCategoryMan extends StatelessWidget {
  const PopularCategoryMan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 377,
      decoration: const BoxDecoration(gradient: KGradient),
      child: Column(
        children: [
          Padding(
            padding: allPadding,
            child: Text(
              "Popular Categories Man",
              style: TextStyle(letterSpacing: 3),
            ),
          ),
          Padding(
            padding: allPadding / 2,
            child: SizedBox(
              height: 333,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.77,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 4.0,
                      crossAxisCount: 3),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 2.0, left: 2, bottom: 3),
                      child: CategoryBox(
                        images: DecorationImage(
                            image: NetworkImage(
                                'https://media.istockphoto.com/photos/take-my-spiritually-very-seriously-picture-id690897378?k=20&m=690897378&s=612x612&w=0&h=TbdKlT1TICvVA3gKe6i7SYK9PTEGXQzLGvtBzKZAhRo='),
                            fit: BoxFit.cover),
                        category: 'Tshirt',
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
