import 'package:flutter/material.dart';


class CarNameAndPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 4.0, right: 8.0, top: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Marcedec",
            style: TextStyle(fontSize: 14),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "تبدأ من",
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 10),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "12900ك.د",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}
