import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/widget/appbar.dart';

class HomePage1 extends StatefulWidget {
  String? title;
  HomePage1({Key? key, required this.title}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.title!),
    );
  }
}
