import 'dart:ui';

import 'package:flutter/material.dart';
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
      title: 'my portfolio',
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.copyWith(
              bodyText1: TextStyle(fontFamily: 'OpenSans'),
              bodyText2: TextStyle(fontFamily: 'OpenSans'),
              headline6: TextStyle(fontFamily: 'OpenSans'),
              caption: TextStyle(fontFamily: 'OpenSans')),
          primarySwatch: Colors.red,
          primaryColor: Color(0xFFE9A115),
          accentColor: Color(0x5CEFAE30),
          scaffoldBackgroundColor: Color(0xFF131218)),
      // home: MyHomePage(title: 'folio port'),
      home: MyProfile(),
      // home: RippleAnimation(),
    );
  }
}
