import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myportfolio/components/textcard.dart';
import 'package:myportfolio/presentation/userdetails.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:myportfolio/exported.dart';
import '../deffault_settings.dart';
import '../theme.dart';
import 'components/experince.dart';
import 'components/frameworks.dart';
import 'components/motivationcard.dart';
import 'components/myprojectscard.dart';
import 'components/socialmedia_holder.dart';
import 'heart_likes.dart';

class MobileView extends StatefulWidget {
  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  double opacity = 0.99;
  double topPosition = 90;
  double increaseHeight = 0.26;
  double paddingControll = 15;
  @override
  Widget build(BuildContext context) {
    var ttheme = Theme.of(context);
    return AnimatedContainer(
      duration: Duration(milliseconds: 460),
      height:
          AppTheme.size(context).height - AppTheme.size(context).height * 0.1,
      width: AppTheme.size(context).width,
      constraints: BoxConstraints(minWidth: 350),
      margin: EdgeInsets.only(
        top: AppTheme.size(context).height * increaseHeight,
        left: 1,
        right: 1,
      ),
      decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5.0), topLeft: Radius.circular(5.0))),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Column(
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
                  onNotification: (dynamic overscroll) =>
                      scrollController(overscroll),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Container(
                          height: 310,
                          constraints: BoxConstraints(maxWidth: 400),
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: canvasColor.withOpacity(0.8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(4, 7),
                                    color: Colors.blueGrey.withOpacity(0.3),
                                    blurRadius: 7,
                                    spreadRadius: 3),
                                BoxShadow(
                                    offset: Offset(8, 5),
                                    color: Colors.blueGrey.withOpacity(0.1),
                                    blurRadius: 15,
                                    spreadRadius: 2)
                              ]),
                          child: Column(
                            children: [
                              Text(
                                'The Developer',
                                style: ttheme.textTheme.headline6
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 2),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: 'I',
                                    style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        color: Color(0xFFC98602),
                                        fontSize: 33,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: '\'am  A '
                                        'Mobile App Developer with Flutter '
                                        'Framework  I have Developed several'
                                        ' Mobile and web projects using '
                                        'the Flutter Framework and with each '
                                        'of their versions managed with '
                                        ' GitHub.\n \n'
                                        'And also a web developer using HTML '
                                        'CSS and javaScript with projects '
                                        'developed deployed and delivered '
                                        'to '
                                        'clients.',
                                    style: ttheme.textTheme.bodyText2.copyWith(
                                        fontFamily: 'OpenSansItalic',
                                        color: Colors.blueGrey[800],
                                        fontWeight: FontWeight.bold))
                              ])),
                              SizedBox(
                                height: kDeffaultpadding / 1.5,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Spacer(),
                                    HeartLikes(
                                      txtcolor: Colors.black,
                                    ),
                                    MaterialButton(
                                      onPressed: () {},
                                      height: 40,
                                      minWidth: 50,
                                      elevation: 4,

                                      // color: Color(0xFFB6821E),
                                      color: Color(0xBC017A78),
                                      child: Center(
                                        child: Text(
                                          'Hire',
                                          style: ttheme.textTheme.headline6
                                              .copyWith(
                                            color: canvasColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: kDeffaultpadding * 1.5,
                        ),

                        TextCard(
                          elevation: 0.5,
                          titleText: 'Current Job',
                          text: 'Currently i am '
                              'working at TechHome Limited as a Mobile App '
                              'developer. ',
                          childWidget: Container(
                            height: 35.0,
                            width: 150,
                            margin: EdgeInsets.only(top: 50),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xBC017A78)),
                                borderRadius: BorderRadius.circular(2)),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Download Resume',
                                  style: TextStyle(color: Color(0xBC017A78)),
                                ),
                                style: ButtonStyle(
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.blueGrey.withOpacity(0.3)))),
                          ),
                        ),

                        SizedBox(height: 2),
                        MotivationCard(ttheme: ttheme), //motivational card
                        SizedBox(
                          height: kDeffaultpadding * 2,
                        ),

                        SubTitleClass(
                          txtStyle: ttheme.textTheme.headline6.copyWith(
                              color: Color(0xFFC98602),
                              fontWeight: FontWeight.w900),
                          subtitle: 'FrameWork',
                          width: 120,
                          rulerColor: Color(0xF303BDBB),
                        ),
                        SizedBox(
                          height: kDeffaultpadding / 1.5,
                        ),
                        Container(
                            height: 220,
                            margin: EdgeInsets.symmetric(
                                horizontal: kDeffaultpadding * 1.5),
                            constraints: BoxConstraints(maxWidth: 350),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FrameWorkCard(
                                        title: 'Flutter',
                                        image: 'assets/icons/flutter.png'),
                                    FrameWorkCard(
                                        title: 'Dart',
                                        image: 'assets/icons/dart.png'),
                                    FrameWorkCard(
                                        title: 'Java',
                                        image: 'assets/icons/java.png')
                                  ],
                                ),
                                SizedBox(
                                  height: (kDeffaultpadding / 2) - 2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FrameWorkCard(
                                        title: 'JScript',
                                        image: 'assets/icons/js.png'),
                                    FrameWorkCard(
                                        title: 'HTML',
                                        image: 'assets'
                                            '/icons/html.png'),
                                    FrameWorkCard(
                                        title: 'CSS',
                                        image: 'assets/icons/css.png')
                                  ],
                                ),
                              ],
                            )),
                        SizedBox(
                          height: kDeffaultpadding,
                        ),
                        MyEducationClass(
                          ttheme: ttheme,
                          titleHeader: SubTitleClass(
                              subtitle: 'Education',
                              width: 220,
                              rulerColor: canvasColor,
                              txtColor: canvasColor),
                        ),
                        mySpacer(height: kDeffaultpadding * 1.5),
                        MyExperinceClass(
                          ttheme: ttheme,
                          titleHeader: SubTitleClass(
                              subtitle: 'My Experience',
                              width: 220,
                              rulerColor: Color(0xF3039291),
                              txtColor: Colors.blueGrey),
                        ),
                        mySpacer(height: kDeffaultpadding * 1.5),
                        SubTitleClass(
                          txtStyle: ttheme.textTheme.headline6.copyWith(
                              color: Color(0xFFC98602),
                              fontWeight: FontWeight.w900),
                          subtitle: 'My Works',
                          width: 100,
                          rulerColor: Color(0xF303BDBB),
                        ),
                        MyProjects(),

                        InkWell(
                          onTap: () async {
                            if (await canLaunch("web/receiveitems.html")) {
                              await launch("web/receiveitems.html",
                                  forceSafariVC: true,
                                  forceWebView: true,
                                  enableJavaScript: true);
                            } else {
                              throw 'can not launch https://twitter.com/meetjahwill';
                            }
                          },
                          child: TextCard(
                            elevation: 0.5,
                            titleText: 'Contact Me',
                            text: 'You can contact me with the detail info '
                                'below.\n'
                                'Mobile: +2347050298246 \n'
                                'Email: Meetjahwill@gmail.com',
                            childWidget: Container(
                              height: 35.0,
                              width: 165,
                              margin: EdgeInsets.only(top: 50),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xBC017A78)),
                                  borderRadius: BorderRadius.circular(4)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Send A Quick Message',
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xBC017A78), fontSize: 12),
                                  ),
                                  style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.blueGrey.withOpacity(0.3)))),
                            ),
                          ),
                        ),
                        Container(
                          height: 150.0,
                          decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.9)),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Follow Me',
                                  style: ttheme.textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: canvasColor),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SocialMediaHolder(
                                      elevation: 0,
                                      tap: () async {
                                        if (await canLaunch(
                                            "https://twitter.com/meetjahwill")) {
                                          await launch(
                                              "https://twitter.com/meetjahwill",
                                              forceSafariVC: true,
                                              forceWebView: true,
                                              enableJavaScript: true);
                                        } else {
                                          throw 'can not launch https://twitter.com/meetjahwill';
                                        }
                                        print('twitter');
                                      },
                                      imageurl: 'assets/icons/twitter.png',
                                      size: 30,
                                    ),
                                    SizedBox(width: kDeffaultpadding * 1.5),
                                    SocialMediaHolder(
                                      elevation: 0,
                                      tap: () {
                                        print('google');
                                      },
                                      imageurl: 'assets/icons/google-plus.png',
                                      size: 30,
                                    ),
                                    SizedBox(width: kDeffaultpadding * 1.5),
                                    SocialMediaHolder(
                                      elevation: 0,
                                      tap: () async {
                                        if (await canLaunch(
                                            "https://web.facebook.com/jahswill.philip")) {
                                          await launch(
                                              "https://web.facebook.com/jahswill.philip",
                                              forceSafariVC: true,
                                              forceWebView: true,
                                              enableJavaScript: true);
                                        } else {
                                          throw 'can not launch https://github.com/jahwill';
                                        }
                                        print('face book');
                                      },
                                      imageurl:
                                          'assets/icons/facebook-circular-l'
                                          'ogo.png',
                                      color: Colors.blue[700],
                                      size: 30,
                                    ),
                                    SizedBox(width: kDeffaultpadding * 1.5),
                                    SocialMediaHolder(
                                      elevation: 0,
                                      tap: () async {
                                        if (await canLaunch(
                                            "https://github.com/jahwill")) {
                                          await launch(
                                              "https://github.com/jahwill",
                                              forceSafariVC: true,
                                              forceWebView: true,
                                              enableJavaScript: true);
                                        } else {
                                          throw 'can not launch https://github.com/jahwill';
                                        }
                                        print('git');
                                      },
                                      imageurl: 'assets/icons/git.png',
                                      color: Colors.blue[700],
                                      size: 30,
                                    ),
                                  ],
                                ),
                                RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                      style: TextStyle(color: canvasColor),
                                      children: [
                                        TextSpan(
                                          text: 'CopyRight(c)',
                                        ),
                                        TextSpan(
                                            text: ' 2021',
                                            style: ttheme.textTheme.subtitle2
                                                .copyWith(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xBC03BDBB))),
                                        TextSpan(
                                          text: ' ||  Powered By',
                                        ),
                                        TextSpan(
                                            text: ' Jahwill-Tech',
                                            style: ttheme.textTheme.subtitle2
                                                .copyWith(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xBC03BDBB)))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(height: 1),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          ///the users profile comes below
          Positioned(
            top: -topPosition,
            child: AnimatedContainer(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                color: canvasColor.withOpacity(opacity),
                borderRadius: BorderRadius.circular(20.0),
              ),
              duration: Duration(milliseconds: 460),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 460),
                decoration: BoxDecoration(
                  color: canvasColor.withOpacity(opacity),
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/my_profilep.png',
                      ),
                      colorFilter: ColorFilter.mode(
                          Colors.transparent.withOpacity(opacity),
                          BlendMode.dstIn),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  scrollController(scroll) {
    if (scroll is OverscrollIndicatorNotification) {
      scroll.disallowGlow();
    } else if (scroll is ScrollNotification) {
      /// to get the percentage of the of every view port you are in the screen
      /// print(((scroll.metrics.extentBefore * 100) /
      ///         scroll.metrics.maxScrollExtent) /
      ///     100);
      ///
      /// var divider = ((scroll.metrics.extentAfter * 100) /
      ///         scroll.metrics.maxScrollExtent) /
      ///     100;

      if (scroll.metrics.extentBefore > 1) {
        opacity == 0.0
            ? print('')
            : setState(() {
                opacity = 0.0;
                increaseHeight = 0.1;
                paddingControll = 50;
                // topPosition = 180;
              });
      } else {
        opacity == 0.99
            ? print('')
            : setState(() {
                opacity = 0.99;
                increaseHeight = 0.3;
                paddingControll = 15;
                // topPosition = 90;
              });
      }
    }

    return;
  }
}
