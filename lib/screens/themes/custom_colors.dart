import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: Color.fromARGB(23, 12, 43, 60),
  // 100: Color.fromARGB(17, 38, 75, .2),
  200: const Color.fromRGBO(17, 38, 75, .3),
  300: const Color.fromRGBO(17, 38, 75, .4),
  400: const Color.fromRGBO(17, 38, 75, .5),
  500: const Color.fromRGBO(17, 38, 75, .6),
  600: const Color.fromRGBO(17, 38, 75, .7),
  700: const Color.fromRGBO(17, 38, 75, .8),
  800: const Color.fromRGBO(17, 38, 75, .9),
  900: const Color.fromRGBO(17, 38, 75, 1),
};

abstract class CustomColors {
  static Color customContrastColor = Color.fromARGB(255, 242, 255, 0);

  static MaterialColor customSwatchColor =
      MaterialColor(0xFF11264b, _swatchOpacity);
}
