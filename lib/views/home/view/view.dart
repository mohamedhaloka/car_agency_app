import 'package:car_agency_app/const.dart';
import 'package:car_agency_app/views/home/view/type_of_car.dart';
import 'package:flutter/material.dart';

import 'agents_news.dart';
import 'bottom_navigation_bar_details.dart';
import 'brand_of_car.dart';
import 'cars_video.dart';
import 'home_app_bar.dart';
import 'home_header.dart';

class HomeView extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      key: scaffoldKey,
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
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              HomeHeader(),
              TypeOfCar(),
              BrandOfCar(),
              AgentsNews(),
              CarsVideo()
            ],
          ),
          Container(
            width: customWidth(context, 1),
            height: customHeight(context, 0.15),
            child: homeAppBar(context, scaffoldKey),
          )
        ],
      ),
    );
  }
}
