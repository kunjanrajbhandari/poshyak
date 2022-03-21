import 'package:flutter/material.dart';

const EdgeInsets allPadding = EdgeInsets.all(8.0);
const EdgeInsets leftPadding = EdgeInsets.only(left: 8.0);
const EdgeInsets rightPadding = EdgeInsets.only(right: 8.0);
const EdgeInsets bottomPadding = EdgeInsets.only(bottom: 8.0);
const EdgeInsets topPadding = EdgeInsets.only(top: 8.0);
BoxShadow elevation(
    {Color? colors,
    double? offsetX,
    double? offsetY,
    double? spreadRadius,
    bool nullelevation = false,
    double? blurRadius}) {
  return nullelevation == false
      ? BoxShadow(
          color:
              colors ?? const Color.fromARGB(255, 83, 83, 83).withOpacity(.3),
          spreadRadius: spreadRadius ?? 1,
          blurRadius: blurRadius ?? 10,
          offset: Offset(offsetX ?? 5, offsetY ?? 4),
        )
      : const BoxShadow();
}

String limitedTitle(
  int wordCounts,
  String mystring,
) {
  final string = mystring;
  try {
    return capitalizeString(
            string.split(" ").sublist(0, wordCounts).join(" ")) +
        " ...";
  } catch (e) {
    var len = string.length;
    if (len < 12) {
      return capitalizeString(string.substring(0, len));
    }
    return capitalizeString(string.substring(0, 13)) + " ...";
  }
}

String capitalizeString(String s) {
  var x = s[0].toUpperCase() + s.substring(1).toLowerCase();

  return x;
}

Color flashSaleColor = const Color(0xffFEEFEC);
const LinearGradient KGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xffFDF0EF), Color.fromARGB(255, 245, 236, 255)]);

Color color1 = const Color(0xffFEEFED);
