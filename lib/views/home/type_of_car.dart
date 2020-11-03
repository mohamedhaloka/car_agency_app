import 'package:car_agency_app/const.dart';
import 'package:flutter/material.dart';

class TypeOfCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 4),
      margin: EdgeInsets.only(bottom: 4),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(
              "تصفح حسب نوع السيارة",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            width: customWidth(context, 1),
            height: 65,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  height: 50,
                  child: RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.all(0),
                    highlightElevation: 0.0,
                    onPressed: () {},
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/car-body.png',
                          width: 60,
                        ),
                        Text(
                          "Hatchback",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: 14,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
