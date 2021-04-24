import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:myportfolio/presentation/gallery/project_gallery.dart';

import '../deffault_settings.dart';
import 'gallery/image_gallery_model.dart';
import 'heart_likes.dart';

class UserDetailsHolder extends StatelessWidget {
  const UserDetailsHolder({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    var ttheme = Theme.of(context);
    var gallery = ProjectGallery(contextSize: size);
    // List<String> framework = [
    //   'Flutter',
    //   'Dart',
    //   'Java',
    //   'Javascript',
    //   'HTML',
    //   'CSS',
    // ];
    return Container(
      height: size.height - size.height * 0.3,
      width: size.width,
      margin: EdgeInsets.only(
        top: size.height * 0.3,
        left: 1,
        right: 1,
      ),
      decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 35.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),

                ///top row
              ],
            ),
          ),
          Expanded(
            child: NotificationListener(
              onNotification: (overscroll) {
                if (overscroll is OverscrollIndicatorNotification) {
                  overscroll.disallowGlow();
                }
                // if (overscroll is ScrollNotification) {
                //   print(overscroll.metrics.outOfRange);
                // }
                return;
              },
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'About the Developer',
                          style: ttheme.textTheme.headline6,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'I',
                            style: TextStyle(
                              fontSize: 25,
                              color: kDeffaultColor,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    ' want to code be at the very best of it !\n'
                                    'Freelancing. \n'
                                    'Am open to any technology in Building the '
                                    'Digital world !',
                                // '\n The feeling of seeing your code run as '
                                // 'intended !',
                                style: ttheme.textTheme.bodyText2,
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'FrameWork ',
                        style: ttheme.textTheme.subtitle1.copyWith(
                            fontWeight: FontWeight.w900,
                            fontFamily: "greycliff",
                            color: Color(0xFFC98602)),
                      ),
                      Wrap(
                        spacing: 3,
                        children: [
                          Chip(
                            backgroundColor: Color(0xFF017A78),
                            label: Text('Flutter'),
                          ),
                          Chip(
                            backgroundColor: Color(0xBC017A78),
                            label: Text('Dart'),
                          ),
                          Chip(
                            backgroundColor: Color(0xBC017A78),
                            label: Text('Java'),
                          ),
                          Chip(
                            backgroundColor: Color(0xBC017A78),
                            label: Text('Javascript'),
                          ),
                          Chip(
                            backgroundColor: Color(0xBC017A78),
                            label: Text('HTML'),
                          ),
                          Chip(
                            backgroundColor: Color(0xBC017A78),
                            label: Text('CSS'),
                          ),
                          Chip(
                            backgroundColor: Color(0xBC017A78),
                            label: Text('Oracle'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              height: 68,
                              // width: size.width * 0.6,
                              constraints: BoxConstraints(maxWidth: 300),
                              decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'My Works :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Expanded(
                                      child: Row(
                                    children: [
                                      Expanded(
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: imageaddress.length,
                                          physics: BouncingScrollPhysics(),
                                          itemBuilder:
                                              (BuildContext context, index) =>
                                                  Card(
                                            child: Container(
                                              // height: 50.0,
                                              // width: 50.0,
                                              // margin: EdgeInsets.only(left: 5),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Image.asset(
                                                imageaddress[index],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          print('to main gallery page');
                                          gallery.projectsgallery(context);
                                          // addimages();
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Text(
                                            'More..',
                                            style: ttheme.textTheme.bodyText1
                                                .copyWith(
                                                    color: kDeffaultColor),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: kDeffaultpadding),
                                child: HeartLikes(),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  followsocialMedia(context);
                                },
                                child: Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    // color: Colors.pinkAccent,
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/social_conbine copy.png',
                                    fit: BoxFit.cover,
                                    // color: color
                                    // Colors.pink[600],
                                  ),
                                ),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              height: 47,
                              minWidth: size.width - 90,
                              elevation: 4,

                              // color: Color(0xFFB6821E),
                              color: Color(0xBC017A78),
                              child: Center(
                                child: Text(
                                  'Hire',
                                  style: ttheme.textTheme.headline6
                                      .copyWith(color: canvasColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  followsocialMedia(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return showMaterialModalBottomSheet(
      barrierColor: Colors.transparent.withOpacity(0.2),
      backgroundColor: Colors.transparent,
      bounce: true,
      elevation: 5.0,
      context: context,
      builder: (_) => Container(
        height: 100,
        // margin: EdgeInsets.only(top: size.height - 50),
        decoration: BoxDecoration(
            color: canvasColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _socialMediaContainer(
              tap: () {
                print('twitter');
              },
              imageurl: 'assets/icons/twitter.png',
            ),
            SizedBox(width: kDeffaultpadding * 1.5),
            _socialMediaContainer(
              tap: () {
                print('google');
              },
              imageurl: 'assets/icons/google-plus.png',
            ),
            SizedBox(width: kDeffaultpadding * 1.5),
            _socialMediaContainer(
                tap: () {
                  print('face book');
                },
                imageurl: 'assets/icons/facebook-circular-l'
                    'ogo.png',
                color: Colors.blue[700]),
          ],
        ),
      ),
    );
  }

  Widget _socialMediaContainer({String imageurl, Color color, Function tap}) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: 43,
        width: 43,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 6),
                color: Colors.grey,
                blurRadius: 3,
              )
            ]),
        child: Image.asset(
          imageurl,
          color: color,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

List<String> imageaddress = [
  'assets/images/preview (3).png',
  'assets/images/image2.jpeg',
  'assets/images/images1.jpeg',
  'assets/images/image2.jpeg',
  'assets/images/preview (3).png',
  'assets/images/images1.jpeg',
  'assets/images/preview (3).png',
  'assets/images/image2.jpeg',
];
