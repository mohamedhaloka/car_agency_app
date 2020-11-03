import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarDetails {
  List<Widget> iconBottom = [
    bottomNavigationIcon("الوكالات"),
    bottomNavigationIcon("الخدمات"),
    bottomNavigationIcon("التثمين"),
    bottomNavigationIcon("التأمين"),
  ];

  static Widget bottomNavigationIcon(tittle) {
    return Container(
      width: 70,
      child: RaisedButton(
        onPressed: (){},
        elevation: 0.0,
        highlightElevation: 0.0,
        padding: EdgeInsets.all(0),
        color: Colors.transparent,
        child: Column(
          children: [
            Image.asset(
              'assets/images/car-icon.png',
              width: 40,
              color: Colors.white,
            ),
            Text("$tittle",style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
