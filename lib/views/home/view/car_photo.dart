import 'package:flutter/material.dart';

import '../../../const.dart';

class CarPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: customWidth(context, 1),
      height: 160,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: ExactAssetImage('assets/images/car.jpg')),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
    );
  }
}