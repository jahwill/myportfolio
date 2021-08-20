import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:myportfolio/components/textcard.dart';
import 'package:myportfolio/domain/calljavascript.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:myportfolio/exported.dart';
import 'package:myportfolio/presentation/components/experince.dart';
import 'components/eduinfosection.dart';
import 'components/motivationcard.dart';

class UserDetailsHolder extends StatelessWidget {
  const UserDetailsHolder(this.size,
      {Key key, this.setOpacity, this.controller, this.opacity = 0.99})
      : super(key: key);

  final Size size;
  final Function setOpacity;
  final ScrollController controller;
  final opacity;
  static const bool kweb = kIsWeb;
  @override
  Widget build(BuildContext context) {
    var ttheme = Theme.of(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 700) {
        return SingleChildScrollView(
          controller: controller,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: AppTheme.size(context).height,
                padding:
                    EdgeInsets.symmetric(horizontal: kDeffaultpadding * 1.9),
                child: Column(
                  children: [
                    SizedBox(
                      ///this part for the profile info
                      height: AppTheme.size(context).height * 0.93,
                      child: SizedBox.expand(
                        child: FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 400.0,
                                margin: size.width > 700
                                    ? EdgeInsets.only(right: size.width * 0.2)
                                    : EdgeInsets.only(right: 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          constraints: BoxConstraints(
                                              maxHeight: 160.0,
                                              maxWidth: 160.0),
                                          decoration: BoxDecoration(
                                            color: canvasColor
                                                .withOpacity(opacity),
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/my_profilep'
                                                  '.png',
                                                ),
                                                colorFilter: ColorFilter.mode(
                                                    Colors.transparent
                                                        .withOpacity(opacity),
                                                    BlendMode.dstIn),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'The Developer',
                                          style: ttheme.textTheme.headline4
                                              .copyWith(
                                                  color: canvasColor,
                                                  fontFamily: 'OpenSansItalic'),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: 'I',
                                            style: TextStyle(
                                              fontSize: 34,
                                              color: kDeffaultColor,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: ' am a '
                                                    'Mobile App Developer with Flutter '
                                                    'Framework,  I have worked '
                                                    'on several'
                                                    ' Mobile and web projects using '
                                                    'the Flutter Framework and with each '
                                                    'of their versions managed '
                                                    'on '
                                                    ' GitHub.\n '
                                                    'And also a web developer using HTML '
                                                    'CSS and javaScript with projects '
                                                    'developed deployed and delivered '
                                                    'to '
                                                    'clients.',
                                                style: ttheme
                                                    .textTheme.bodyText2
                                                    .copyWith(
                                                        fontSize: 17,
                                                        fontFamily:
                                                            'OpenSansItalic',
                                                        color: canvasColor,
                                                        height: 1.5),
                                              ),
                                            ]),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: kDeffaultpadding / 2,
                                                right: kDeffaultpadding / 2.2),
                                            child: HeartLikes(),
                                          ),
                                          Text(
                                            "||",
                                            style: ttheme.textTheme.headline4
                                                .copyWith(color: Colors.white),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              WidgetsBinding.instance
                                                  .addPostFrameCallback((_) {
                                                controller.position.animateTo(
                                                    controller.position
                                                        .maxScrollExtent,
                                                    duration: Duration(
                                                        milliseconds: 1000),
                                                    curve: Curves.easeIn);
                                              });
                                            },
                                            child: Container(
                                              height: 26,
                                              width: 120.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xBC017A78),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Follow Me',
                                                  style: ttheme
                                                      .textTheme.subtitle2
                                                      .copyWith(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 400,
                                margin: EdgeInsets.only(
                                  top: size.height * 0.1,
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: kDeffaultpadding * 2),
                                decoration: BoxDecoration(
                                  color: canvasColor.withOpacity(0.99),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 130,
                                      child: Column(
                                        children: [
                                          Text(
                                            'FrameWorks ',
                                            style: ttheme.textTheme.headline6
                                                .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xBC015352)),
                                          ),
                                          AnimatedContainer(
                                            height: 1.5,
                                            duration:
                                                Duration(milliseconds: 460),
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[800]),
                                          ),
                                          AnimatedContainer(
                                            height: 1,
                                            margin: EdgeInsets.only(
                                                top: 3, left: 50.0),
                                            duration:
                                                Duration(milliseconds: 460),
                                            decoration: BoxDecoration(
                                                color: Colors.blueGrey[800]),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: kDeffaultpadding,
                                    ),
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
                                    SizedBox(
                                      height: kDeffaultpadding * 1.6,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 38,
                                        width: 300,

                                        // color: Color(0xFFB6821E),
                                        decoration: BoxDecoration(
                                            color: Color(0xBC017A78),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: Offset(0, 2),
                                                color: Colors.blueGrey,
                                                blurRadius: 5,
                                              )
                                            ]),
                                        child: Center(
                                          child: Text(
                                            'Hire',
                                            style: ttheme.textTheme.headline6
                                                .copyWith(
                                                    color: canvasColor,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily:
                                                        'OpenSansItalic'),
                                          ),
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
                    InkWell(
                      onTap: () {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          controller.position.animateTo(500,
                              duration: Duration(milliseconds: 1000),
                              curve: Curves.easeIn);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xBC017A78), width: 2)),
                        child: Center(
                          child: Icon(Icons.arrow_downward_rounded,
                              color: canvasColor, size: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: AppTheme.size(context).width,
                margin: EdgeInsets.only(top: kDeffaultpadding * 1.5),
                color: canvasColor,
                child: Column(
                  children: [
                    mySpacer(
                      height: kDeffaultpadding * 2.1,
                    ),
                    MotivationCard(
                        sWidth: 500,
                        sHeight: 400,
                        imgsize: 110,
                        txtstyle: ttheme.textTheme.bodyText2.copyWith(
                            fontFamily: 'OpenSansItalic',
                            fontSize: 25.7,
                            color: Colors.blueGrey[800]),
                        ttheme: ttheme),
                    mySpacer(height: kDeffaultpadding * 2),
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
                    MyNewProjectsForBgScreen(),
                    TextCard(
                      elevation: 5.5,
                      sWidth: 450,
                      titleText: 'Contact Me',
                      text: 'You can contact me with the detail info '
                          'below.\n'
                          '\nMobile: +2347050298246 \n'
                          'Email: Meetjahwill@gmail.com',
                      childWidget: Container(
                        height: 35.0,
                        width: 165,
                        margin: EdgeInsets.only(top: 50),
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xBC017A78)),
                            borderRadius: BorderRadius.circular(4)),
                        child: TextButton(
                            onPressed: (kweb)
                                ? () {
                                    print('it is the web');
                                    contactForm().navigatetopage();
                                  }
                                : () {
                                    print('running funtion for web non web '
                                        'large screen plartform');
                                  },
                            child: Text(
                              'Send A Quick Message',
                              style: TextStyle(
                                  color: Color(0xBC017A78), fontSize: 12),
                            ),
                            style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.blueGrey.withOpacity(0.3)))),
                      ),
                    ),
                    mySpacer(height: kDeffaultpadding / 1.5),
                    TextCard(
                      elevation: 0.5,
                      sWidth: 400,
                      sHeight: 150.0,
                      titleText: 'Disclaimer',
                      text: 'this page is a Progressive Web App Page (PWA) '
                          'that is design with flutter web and it is part of '
                          'my works. I have the full right to the contents of'
                          ' this page and any use of it contents without my '
                          'authorization by anyone is a breach of property '
                          'right. ',
                    ),
                    Container(
                      constraints: BoxConstraints(
                        minHeight: 150.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.9)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
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
                                  size: 25,
                                ),
                                SizedBox(width: kDeffaultpadding * 1.5),
                                SocialMediaHolder(
                                  elevation: 0,
                                  tap: () {
                                    print('google');
                                  },
                                  imageurl: 'assets/icons/google-plus.png',
                                  size: 25,
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
                                  imageurl: 'assets/icons/facebook-circular-l'
                                      'ogo.png',
                                  color: Colors.blue[700],
                                  size: 25,
                                ),
                                SizedBox(width: kDeffaultpadding * 1.5),
                                SocialMediaHolder(
                                  elevation: 0,
                                  tap: () async {
                                    if (await canLaunch(
                                        "https://github.com/jahwill")) {
                                      await launch("https://github.com/jahwill",
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
                                  size: 25,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                      style: TextStyle(color: canvasColor),
                                      children: [
                                        TextSpan(
                                          text: 'Copyright(c)',
                                        ),
                                        TextSpan(
                                            text: ' 2021',
                                            style: ttheme.textTheme.subtitle2
                                                .copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: kDeffaultColor)),
                                        TextSpan(
                                          text: ' |  Powered by',
                                        ),
                                        TextSpan(
                                            text: ' Jahwill-Tech',
                                            style: ttheme.textTheme.subtitle2
                                                .copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: kDeffaultColor)),
                                        TextSpan(
                                            text: ' All right reserved',
                                            style: ttheme.textTheme.subtitle2
                                                .copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white))
                                      ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      } else

        //
        ///      Mobile UI Screen below
        /// ...............................................................................
        ///the below code is the UI for mobile version
        return MobileView();
    });
  }

  followsocialMedia(BuildContext context) {
    return showMaterialModalBottomSheet(
      barrierColor: Colors.transparent.withOpacity(0.2),
      backgroundColor: Colors.transparent,
      bounce: true,
      elevation: 5.0,
      context: context,
      builder: (_) => Container(
        height: 100,
        decoration: BoxDecoration(
            color: canvasColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Social Media Handle',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaHolder(
                  tap: () async {
                    if (await canLaunch("https://twitter.com/meetjahwill")) {
                      await launch("https://twitter.com/meetjahwill",
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
                  tap: () {
                    print('google');
                  },
                  imageurl: 'assets/icons/google-plus.png',
                  size: 30,
                ),
                SizedBox(width: kDeffaultpadding * 1.5),
                SocialMediaHolder(
                  tap: () async {
                    if (await canLaunch(
                        "https://web.facebook.com/jahswill.philip")) {
                      await launch("https://web.facebook.com/jahswill.philip",
                          forceSafariVC: true,
                          forceWebView: true,
                          enableJavaScript: true);
                    } else {
                      throw 'can not launch https://github.com/jahwill';
                    }
                    print('face book');
                  },
                  imageurl: 'assets/icons/facebook-circular-l'
                      'ogo.png',
                  color: Colors.blue[700],
                  size: 30,
                ),
                SizedBox(width: kDeffaultpadding * 1.5),
                SocialMediaHolder(
                    tap: () async {
                      if (await canLaunch("https://github.com/jahwill")) {
                        await launch("https://github.com/jahwill",
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
                    size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SubTitleClass extends StatelessWidget {
  const SubTitleClass(
      {Key key,
      this.subtitle = '',
      this.width = 150,
      this.txtColor,
      this.rulerColor,
      this.txtStyle})
      : super(key: key);
  final TextStyle txtStyle;
  final String subtitle;
  final double width;
  final Color txtColor, rulerColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Text(
            subtitle,
            style: txtStyle ??
                Theme.of(context).textTheme.headline4.copyWith(
                    fontWeight: FontWeight.w500,
                    color: txtColor ?? Color(0xBC015352)),
          ),
          AnimatedContainer(
            height: 1.5,
            duration: Duration(milliseconds: 460),
            decoration:
                BoxDecoration(color: rulerColor ?? Colors.blueGrey[800]),
          ),
          AnimatedContainer(
            height: 1,
            margin: EdgeInsets.only(top: 3, left: 50),
            duration: Duration(milliseconds: 460),
            decoration:
                BoxDecoration(color: rulerColor ?? Colors.blueGrey[800]),
          ),
        ],
      ),
    );
  }
}

//
List<String> imageaddress = [
  'assets/gallery/Screenshot_2021-01-28-10-43-21.png',
  'assets/gallery/Screenshot_2021-01-28-16-55-55.png',
  'assets/gallery/Screenshot_2021-01-28-10-05-36.png',
  'assets/gallery/Screenshot_2021-01-28-17-08-20.png',
  'assets/images/images1.jpeg',
  'assets/images/image2.jpeg',
  'assets/images/preview (3).png',
  'assets/images/images1.jpeg',
  'assets/gallery/Screenshot_2021-02-20-17-39-27.png',
  'assets/gallery/Screenshot_2021-02-06-14-38-05.png',
  'assets/gallery/accounthome.png',
  'assets/gallery/account_sendfund.png',
  'assets/gallery/accountprofile.png',
];
