import 'package:car_agency_app/const.dart';
import 'file:///C:/Users/laptop/AndroidStudioProjects/car_agency_app/lib/views/home/view/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  // HomeHeader(_drawerKey);
  // GlobalKey<ScaffoldState> _drawerKey;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 6),
      color: Colors.grey[200],
      child: Stack(
        children: [
          //image
          Image.asset(
      'assets/images/car.jpg',
            width: customWidth(context, 1),
            height: customHeight(context, 0.36),
            fit: BoxFit.cover,
          ),
          //gradient
          Container(
            width: customWidth(context, 1),
            height: customHeight(context, 0.2),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [secondaryColor, Colors.transparent],
                  tileMode: TileMode.mirror,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          //appBar
          homeAppBar(context)
        ],
      ),
    );
  }
}
