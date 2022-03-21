import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  String? category;
  DecorationImage? images;
  CategoryBox({Key? key, this.category, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.2,
      height: 111,
      decoration: BoxDecoration(
        image: images,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3.2,
            height: 22,
            color: Colors.black.withOpacity(0.7),
            child: Center(
              child: Text(
                category!,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
