import 'package:car_agency_app/const.dart';
import 'package:car_agency_app/views/home/agents_news.dart';
import 'package:car_agency_app/views/home/bottom_navigation_bar_details.dart';
import 'package:car_agency_app/views/home/brand_of_car.dart';
import 'package:car_agency_app/views/home/cars_video.dart';
import 'package:car_agency_app/views/home/home_header.dart';
import 'package:car_agency_app/views/home/type_of_car.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  // GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _drawerKey,
      drawer: new Drawer(),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: Container(
        width: customWidth(context, 1),
        color: secondaryColor,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: BottomNavigationBarDetails().iconBottom,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            TypeOfCar(),
            BrandOfCar(),
            AgentsNews(),
            CarsVideo()
          ],
        ),
      ),
    );
  }
}
