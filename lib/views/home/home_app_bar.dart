import 'package:flutter/material.dart';

homeAppBar(context, GlobalKey<ScaffoldState> _drawerKey) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(Icons.drag_handle),
      onPressed: () {
        _drawerKey.currentState.openDrawer();
      },
      color: Colors.white,
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
