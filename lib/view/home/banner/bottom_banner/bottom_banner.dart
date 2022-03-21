import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';

class BottomBanner extends StatelessWidget {
  const BottomBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 222,
            width: 144,
            color: Colors.greenAccent,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 105,
                  width: 197,
                  color: Colors.greenAccent,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 105,
                    width: 197,
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
