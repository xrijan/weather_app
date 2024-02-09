import 'package:flutter/material.dart';

class Constant {
   static const String weatherApiKey = 'd49ec9c1918eff5b0dd5fd8cf9efa94c';
   ///colors
   static  Color thunderCloud = const Color(0xFF000000);
   static Color duskFire = const Color(0xFFFFC85C);
   static Color mistyMorning = const Color(0xFF8BD5FF);
   static Color solarFlare = const Color(0xFFFFEE55);
   //Thundercloud Gray

  static  double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * (5/9);
   }

   static int kelvinToCelsius(double kelvin) {
  double celsius = kelvin - 273.15;
  return celsius.toInt();
}
}