import 'package:flutter/material.dart';

import '../../const.dart';
import 'header_of_list_view.dart';

class BrandOfCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 4),
      margin: EdgeInsets.only(bottom: 4),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderOfListView(tittle: "تصفح حسب الماركة",allOnTap: (){},),

          Container(
            width: customWidth(context, 1),
            height: 65,
            margin: EdgeInsets.only(bottom: 8.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: 66,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1, color: Colors.grey[200])),
                  margin: EdgeInsets.all(2),
                  child: RaisedButton(
                    elevation: 0.0,
                    padding: EdgeInsets.all(2),
                    highlightElevation: 0.0,
                    onPressed: () {},
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'assets/images/chevrolet.png',
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
