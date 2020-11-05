import 'package:flutter/material.dart';

import '../../../const.dart';

homeAppBar(context, GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(Icons.drag_handle),
      onPressed: () {
        scaffoldKey.currentState.openDrawer();
      },
      color: Colors.white,
    ),
    flexibleSpace: Container(
      width: customWidth(context, 1),
      height: customHeight(context, 0.1),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [secondaryColor, Colors.transparent],
            tileMode: TileMode.mirror,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
    ),
    brightness: Brightness.dark,
    elevation: 0.0,
    actions: [
      Stack(
        children: [
          IconButton(
            icon: Image.asset(
              'assets/images/notification.png',
              color: Colors.white,
              width: 24,
            ),
            onPressed: () {},
            color: Colors.white,
          ),
          Positioned(
            top: 2,
            child: Container(
              width: 30,
              height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffF94E22)),
              child: Center(
                  child: Text(
                "12",
                style: TextStyle(color: Colors.white),
              )),
            ),
          )
        ],
      )
    ],
  );
}
