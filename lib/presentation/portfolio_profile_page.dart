import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:myportfolio/deffault_settings.dart';
import 'package:myportfolio/presentation/gallery/image_gallery_model.dart';
import 'package:myportfolio/presentation/userdetails.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  // Gallery _gallery = Gallery();
  @override
  void initState() {
    addimages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var txttheme = Theme.of(context).textTheme;
    var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
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
            UserDetailsHolder(size: size),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Esquire Jah\'swill',
                        style: txttheme.headline5.copyWith(
                          color: theme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Flutterista',
                        style: txttheme.headline5.copyWith(
                            color: canvasColor, fontFamily: 'greycliff'),
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
                          color: Colors.blue[600],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kDeffaultpadding * 1.9,
                  ),
                  Container(
                    height: 115.0,
                    width: 115.0,
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: canvasColor,
                      // color: kDeffaultColor,

                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Container(
                      // height: 150,
                      // width: 150,
                      decoration: BoxDecoration(
                        color: canvasColor,
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/my_profilep.png',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
