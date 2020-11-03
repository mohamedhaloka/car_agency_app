import 'package:flutter/cupertino.dart';

const Color secondaryColor = Color(0xff4A52C1);
const Color primaryColor = Color(0xffFFFFFF);

customHeight(context, heiNum) {
  return MediaQuery.of(context).size.height * heiNum;
}

customWidth(context, wedNum) {
  return MediaQuery.of(context).size.width * wedNum;
}
