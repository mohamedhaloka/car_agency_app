import 'package:car_agency_app/const.dart';
import 'package:flutter/material.dart';

import 'home_app_bar.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 6),
      color: Colors.grey[200],
      child: Container(
        width: customWidth(context, 1),
        height: customHeight(context, 0.36),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage("assets/images/car.jpg"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
