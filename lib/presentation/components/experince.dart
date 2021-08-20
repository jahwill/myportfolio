import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../exported.dart';

class MyExperinceClass extends StatelessWidget {
  const MyExperinceClass({
    Key key,
    @required this.ttheme,
    this.titleHeader,
  }) : super(key: key);

  final ThemeData ttheme;
  final Widget titleHeader;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 980) {
        return Container(
          width: AppTheme.size(context).width,
          padding: EdgeInsets.only(
              top: kDeffaultpadding * 1.5,
              bottom: kDeffaultpadding * 1.5,
              right: kDeffaultpadding / 2,
              left: kDeffaultpadding * 4),
          child: Column(
            children: [
              titleHeader,
              mySpacer(height: kDeffaultpadding),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 600, maxHeight: 200),
                    padding: EdgeInsets.only(
                        left: kDeffaultpadding * 4, right: 5, top: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFE7E7FC).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.blueGrey.withOpacity(0.1),
                              blurRadius: 20,
                              spreadRadius: 0),
                        ]),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mySpacer(height: kDeffaultpadding / 2),
                            Text(
                              'FLutter/Cross Platform Developer',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 18.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            mySpacer(height: kDeffaultpadding / 2),
                            Text(
                              'TechHome LTD',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 13.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            mySpacer(height: kDeffaultpadding / 4),
                            Text(
                              'I am currently working as Frontend  android '
                              'developer'
                              ' with TechHome Limited  '
                              'developer using Flutter framework ',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                  fontSize: 13,
                                  fontFamily: 'OpenSans',
                                  height: 1.5),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: -80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        mySpacer(height: kDeffaultpadding / 4),
                        Text(
                          '2020',
                          style: TextStyle(
                              color: Color(0xFFD52B2B),
                              fontWeight: FontWeight.bold,
                              fontSize: 65.0),
                        ),
                        Text(
                          'June To Present',
                          style: ttheme.textTheme.bodyText2.copyWith(
                            fontSize: 17.0,
                            fontFamily: 'OpenSans',
                            color: Color(0xFF787878),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              mySpacer(height: kDeffaultpadding / 3),

              ///experience stack work 2
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      minHeight: 200,
                      maxWidth: 600,
                    ),
                    padding: EdgeInsets.only(
                        left: kDeffaultpadding * 4, right: 5, top: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFE7E7FC).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.blueGrey.withOpacity(0.1),
                              blurRadius: 20,
                              spreadRadius: 0),
                        ]),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mySpacer(height: kDeffaultpadding / 2),
                            Text(
                              'Web Developer/ Java ',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 18.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            mySpacer(height: kDeffaultpadding / 2),
                            Text(
                              'Freelancing ',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 13.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            mySpacer(height: kDeffaultpadding / 4),
                            Text(
                              'I Worked as a freelancer on web development '
                              'and java language programming and also '
                              'give offer tutoring class(both free and '
                              'paid) to students who '
                              'wishes to get knowledge on java language '
                              'as well as on HTML CSS and Javascript ',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                  fontSize: 13,
                                  fontFamily: 'OpenSans',
                                  height: 1.5),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: -80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        mySpacer(height: kDeffaultpadding / 4),
                        Text(
                          '2016',
                          style: TextStyle(
                              color: Color(0xFFD52B2B),
                              fontSize: 65.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2016 To Present',
                          style: ttheme.textTheme.bodyText2.copyWith(
                            fontSize: 17.0,
                            fontFamily: 'OpenSans',
                            color: Color(0xFF787878),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              mySpacer(height: kDeffaultpadding / 3),

              ///experience stack 3
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 600, minHeight: 200),
                    padding: EdgeInsets.only(
                        left: kDeffaultpadding * 4, right: 5, top: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFE7E7FC).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.blueGrey.withOpacity(0.1),
                              blurRadius: 20,
                              spreadRadius: 0),
                        ]),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mySpacer(height: kDeffaultpadding / 2),
                            Text(
                              'Computer Class Instructor',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 18.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            mySpacer(height: kDeffaultpadding / 2),
                            Text(
                              'FGC Ilorin',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 13.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            mySpacer(height: kDeffaultpadding / 4),
                            Text(
                              'I worked as a computer class instructor in the'
                              ' ICT department in '
                              'Federal Government College Ilorin Kwara state.'
                              ' \n I gave gave instruction classes on '
                              'Basic computer operation, hardware '
                              'identification and setup.\n '
                              'I also thought Software application '
                              'packages like Microsoft and Corel draw for'
                              ' graphics designs',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                  fontSize: 13,
                                  fontFamily: 'OpenSans',
                                  height: 1.5),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: -80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        mySpacer(height: kDeffaultpadding / 4),
                        Text(
                          '2018',
                          style: TextStyle(
                              color: Color(0xFFD52B2B),
                              fontWeight: FontWeight.bold,
                              fontSize: 65.0),
                        ),
                        Text(
                          'May To 2019 Mar',
                          style: ttheme.textTheme.bodyText2.copyWith(
                            fontSize: 17.0,
                            fontFamily: 'OpenSans',
                            color: Color(0xFF787878),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              mySpacer(height: kDeffaultpadding / 3),

              ///experience stack 4
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 600,
                      minHeight: 200,
                    ),
                    padding: EdgeInsets.only(
                        left: kDeffaultpadding * 4, right: 5, top: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFE7E7FC).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.blueGrey.withOpacity(0.1),
                              blurRadius: 20,
                              spreadRadius: 0),
                        ]),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mySpacer(height: kDeffaultpadding / 2),
                            Text(
                              'Instructor on UX/UI Designs & Computer '
                              'Operation',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 18.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            mySpacer(height: kDeffaultpadding / 2),
                            Text(
                              'Rexous Technologies Limited',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 13.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            mySpacer(height: kDeffaultpadding),
                            Text(
                              'Assistant manager, Rexous Technologies '
                              'Ilorin branch. I thought computer '
                              'operation and Graphics designing classes '
                              'with the Corel Draw graphics package.    ',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                  fontSize: 13,
                                  fontFamily: 'OpenSans',
                                  height: 1.5),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: -80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        mySpacer(height: kDeffaultpadding / 4),
                        Text(
                          '2019',
                          style: TextStyle(
                              color: Color(0xFFD52B2B),
                              fontWeight: FontWeight.bold,
                              fontSize: 65.0),
                        ),
                        Text(
                          'May To 2020 Jan',
                          style: ttheme.textTheme.bodyText2.copyWith(
                            fontSize: 17.0,
                            fontFamily: 'OpenSans',
                            color: Color(0xFF787878),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              mySpacer(height: kDeffaultpadding / 3),
            ],
          ),
        );
      }

      ///for larger screens below
      else
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            children: [
              titleHeader,
              mySpacer(height: kDeffaultpadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  mySpacer(width: 2),

                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                            minHeight: 200,
                            maxWidth: AppTheme.size(context).width * 0.4),
                        padding: EdgeInsets.only(
                            left: kDeffaultpadding * 4, right: 5, top: 5),
                        decoration: BoxDecoration(
                            color: Color(0xFFE7E7FC).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 0),
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  blurRadius: 20,
                                  spreadRadius: 0),
                            ]),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                mySpacer(height: kDeffaultpadding / 2),
                                Text(
                                  'FLutter/Cross Platform Developer',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                    fontSize: 18.0,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                mySpacer(height: kDeffaultpadding / 2),
                                Text(
                                  'TechHome LTD',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                    fontSize: 13.0,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                mySpacer(height: kDeffaultpadding / 4),
                                Text(
                                  'I am currently working as Frontend  android '
                                  'developer'
                                  ' with TechHome Limited  '
                                  'developer using Flutter framework ',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                      fontSize: 13,
                                      fontFamily: 'OpenSans',
                                      height: 1.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: -80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            mySpacer(height: kDeffaultpadding / 4),
                            Text(
                              '2020',
                              style: TextStyle(
                                  color: Color(0xFFD52B2B),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 65.0),
                            ),
                            Text(
                              'June To Present',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 17.0,
                                fontFamily: 'OpenSans',
                                color: Color(0xFF787878),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  mySpacer(width: 2),

                  ///experience stack work 2
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: AppTheme.size(context).width * 0.4,
                          minHeight: 200,
                        ),
                        padding: EdgeInsets.only(
                            left: kDeffaultpadding * 4, right: 5, top: 5),
                        decoration: BoxDecoration(
                            color: Color(0xFFE7E7FC).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 0),
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  blurRadius: 20,
                                  spreadRadius: 0),
                            ]),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                mySpacer(height: kDeffaultpadding / 2),
                                Text(
                                  'Web Developer/ Java ',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                    fontSize: 18.0,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                mySpacer(height: kDeffaultpadding / 2),
                                Text(
                                  'Freelancing ',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                    fontSize: 13.0,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                mySpacer(height: kDeffaultpadding / 4),
                                Text(
                                  'I Worked as a freelancer on web development '
                                  'and java language programming and also '
                                  'give offer tutoring class(both free and '
                                  'paid) to students who '
                                  'wishes to get knowledge on java language '
                                  'as well as on HTML CSS and Javascript ',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                      fontSize: 13,
                                      fontFamily: 'OpenSans',
                                      height: 1.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: -80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            mySpacer(height: kDeffaultpadding / 4),
                            Text(
                              '2016',
                              style: TextStyle(
                                  color: Color(0xFFD52B2B),
                                  fontSize: 65.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '2016 To Present',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 17.0,
                                fontFamily: 'OpenSans',
                                color: Color(0xFF787878),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              mySpacer(height: kDeffaultpadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  mySpacer(width: 2),

                  ///experience stack 3

                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: AppTheme.size(context).width * 0.4,
                          minHeight: 200,
                        ),
                        padding: EdgeInsets.only(
                            left: kDeffaultpadding * 4, right: 5, top: 5),
                        decoration: BoxDecoration(
                            color: Color(0xFFE7E7FC).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 0),
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  blurRadius: 20,
                                  spreadRadius: 0),
                            ]),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                mySpacer(height: kDeffaultpadding / 2),
                                Text(
                                  'Computer Class Instructor',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                    fontSize: 18.0,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                mySpacer(height: kDeffaultpadding / 2),
                                Text(
                                  'FGC Ilorin',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                    fontSize: 13.0,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                mySpacer(height: kDeffaultpadding / 4),
                                Text(
                                  'I worked as a computer class instructor in the'
                                  ' ICT department in '
                                  'Federal Government College Ilorin Kwara state.'
                                  ' \n I gave gave instruction classes on '
                                  'Basic computer operation, hardware '
                                  'identification and setup.\n '
                                  'I also thought Software application '
                                  'packages like Microsoft and Corel draw for'
                                  ' graphics designs',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                      fontSize: 13,
                                      fontFamily: 'OpenSans',
                                      height: 1.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: -80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            mySpacer(height: kDeffaultpadding / 4),
                            Text(
                              '2018',
                              style: TextStyle(
                                  color: Color(0xFFD52B2B),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 65.0),
                            ),
                            Text(
                              'May To 2019 Mar',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 17.0,
                                fontFamily: 'OpenSans',
                                color: Color(0xFF787878),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  mySpacer(width: 2),

                  ///experience stack 4
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: AppTheme.size(context).width * 0.4,
                          minHeight: 200,
                        ),
                        padding: EdgeInsets.only(
                            left: kDeffaultpadding * 4, right: 5, top: 5),
                        decoration: BoxDecoration(
                            color: Color(0xFFE7E7FC).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 0),
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  blurRadius: 20,
                                  spreadRadius: 0),
                            ]),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                mySpacer(height: kDeffaultpadding / 2),
                                Text(
                                  'Instructor on UX/UI Designs & Computer '
                                  'Operation',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                    fontSize: 18.0,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                mySpacer(height: kDeffaultpadding / 2),
                                Text(
                                  'Rexous Technologies Limited',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                    fontSize: 13.0,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                mySpacer(height: kDeffaultpadding),
                                Text(
                                  'Assistant manager, Rexous Technologies '
                                  'Ilorin branch. I thought computer '
                                  'operation and Graphics designing classes '
                                  'with the Corel Draw graphics package.    ',
                                  style: ttheme.textTheme.bodyText2.copyWith(
                                      fontSize: 13,
                                      fontFamily: 'OpenSans',
                                      height: 1.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: -80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            mySpacer(height: kDeffaultpadding / 4),
                            Text(
                              '2019',
                              style: TextStyle(
                                  color: Color(0xFFD52B2B),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 65.0),
                            ),
                            Text(
                              'May To 2020 Jan',
                              style: ttheme.textTheme.bodyText2.copyWith(
                                fontSize: 17.0,
                                fontFamily: 'OpenSans',
                                color: Color(0xFF787878),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
    });
  }
}
