import 'package:flutter/material.dart';

class HeaderOfListView extends StatelessWidget {
  HeaderOfListView({@required this.tittle, @required this.allOnTap});
  String tittle;
  Function allOnTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$tittle",
            style: TextStyle(color: Colors.black),
          ),
          GestureDetector(
            child: Text(
              "الكل",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            onTap: allOnTap,
          )
        ],
      ),
    );
  }
}
