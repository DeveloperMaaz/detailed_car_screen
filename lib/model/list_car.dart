import 'package:flutter/material.dart';

class Details {
  static final categoryCar = [
    CarList('assets/images/Frame 6.png'),
    CarList('assets/images/Frame 11.png'),
    CarList('assets/images/Frame 12.png'),
    CarList('assets/images/Frame 13.png'),
    CarList('assets/images/Frame 14.png'),
  ];
}

class CarList {
  String image;

  CarList(this.image);
}
