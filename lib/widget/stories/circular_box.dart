import 'package:flutter/material.dart';

class CircularBox extends StatelessWidget {
  NetworkImage? image;
  String? title;
  CircularBox({Key? key, this.image, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 39, backgroundImage: image),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title!,
            style: TextStyle(fontSize: 13),
          ),
        )
      ],
    );
  }
}
