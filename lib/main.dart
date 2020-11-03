import 'package:car_agency_app/const.dart';
import 'file:///C:/Users/laptop/AndroidStudioProjects/car_agency_app/lib/views/home/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child,
        );
      },
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        Locale("en", "US"),
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("fa", "IR"),
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        backgroundColor: primaryColor
      ),
      home: HomeView(),
    );
  }
}
