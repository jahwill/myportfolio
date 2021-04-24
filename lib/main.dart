import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myportfolio/components/ripplewaveanimation/ripplesplash.dart';
import 'package:myportfolio/esusdetailedscreen/esusu_detailed_screen.dart';
import 'package:myportfolio/presentation/portfolio_profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
          textTheme: TextTheme(
              bodyText2: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 1.3),
              headline6: TextStyle(
                fontFamily: 'greycliff',
              )),
          primaryColor: Color(0xFFE9A115),
          accentColor: Color(0x5CEFAE30),
          scaffoldBackgroundColor: Color(0xFF131218)),
      // home: RippleAnimation(
      //   color: Color(0xFF0AA5A3),
      //   size: 65,
      // ),
      home: EsusuDetailsScreen(),
    );
  }
}
