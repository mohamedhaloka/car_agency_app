import 'package:flutter/material.dart';

import '../../const.dart';
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
                  width: 240,
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
                        Container(
                          width: customWidth(context, 1),
                          height: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      ExactAssetImage('assets/images/car.jpg')),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 4.0, right: 4.0, top: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Marcedec",
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "تبدأ من",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12),
                                  ),
                                  Text("12900ك.د"),
                                ],
                              )
                            ],
                          ),
                        )
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
