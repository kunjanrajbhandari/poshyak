import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Box3 extends StatelessWidget {
  const Box3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 3.2,
          height: 144,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/image/banner1.png'),
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: Column(
              children: [
                Text(
                  "The North Face",
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  "Stylish Sportwear",
                  style: TextStyle(fontSize: 11),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
