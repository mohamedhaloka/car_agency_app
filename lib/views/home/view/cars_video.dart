import 'package:flutter/material.dart';

import '../../../const.dart';
import 'car_card/car_name_and_price.dart';
import 'car_card/car_photo.dart';
import 'header_of_list_view.dart';

class CarsVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 4),
      margin: EdgeInsets.only(bottom: 4),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderOfListView(
            tittle: "فيديو",
            allOnTap: () {},
          ),
          Container(
            width: customWidth(context, 1),
            height: 200,
            margin: EdgeInsets.only(bottom: 8.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: customWidth(context, 0.6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1, color: Colors.grey[700])),
                  margin: EdgeInsets.all(2),
                  child: RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.all(0),
                    highlightElevation: 0.0,
                    onPressed: () {},
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        CarPhoto(),
                        CarNameAndPrice(),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 7,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
