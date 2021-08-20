import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/deffault_settings.dart';
import 'package:myportfolio/theme.dart';

import 'userdetails.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  ScrollController controller;
  @override
  void initState() {
    super.initState();
    controller = ScrollController(initialScrollOffset: 1);
  }

  Function function;
  double opacity = 0.99;
  scrollController(scroll) {
    if (scroll is OverscrollIndicatorNotification) {
      scroll.disallowGlow();
    } else if (scroll is ScrollNotification) {
      if (scroll.metrics.extentBefore > 1) {
        if (opacity == 0.0) {
          opacity = 0.0;
        } else {
          opacity = 0.0;
          setState(() {});
        }
      } else {
        if (opacity == 0.99) {
          opacity = 0.99;
        } else {
          opacity = 0.99;
          setState(() {});
        }
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    var txttheme = Theme.of(context).textTheme;
    var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: CupertinoScrollbar(
          controller: controller.hasClients ? controller : null,
          thickness: 8.0,
          notificationPredicate: (s) => scrollController(s),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/portfolio_bg.png'),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                ///the containers below are the position at the top right
                ///screen for design
                Positioned(
                  right: -45.0,
                  top: -10,
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        color: kDeffaultColor, shape: BoxShape.circle),
                  ),
                ),
                Positioned(
                  right: 58.0,
                  top: 80.0,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: kDeffaultColor, shape: BoxShape.circle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Esquire Jah\'swill',
                            style: txttheme.headline5.copyWith(
                              color: theme.primaryColor.withOpacity(opacity),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Flutterista',
                            style: txttheme.headline5.copyWith(
                                color: canvasColor.withOpacity(opacity),
                                fontFamily: 'greycliff'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(
                              'assets/icons/love_heart.png',
                              fit: BoxFit.cover,
                              color: Colors.blue[600].withOpacity(opacity),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                UserDetailsHolder(
                  AppTheme.size(context),
                  controller: controller,
                  opacity: opacity,
                ),

                /// holds
                /// the user's
                /// information
              ],
            ),
          ),
        ),
      ),
    );
  }
}
