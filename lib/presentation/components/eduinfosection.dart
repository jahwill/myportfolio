import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../exported.dart';

class MyEducationClass extends StatelessWidget {
  const MyEducationClass({
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
      if (constraints.maxWidth <= 800) {
        return Container(
          color: Colors.black87,
          constraints: BoxConstraints(
            minHeight: kDeffaultpadding * 20,
          ),
          padding: EdgeInsets.symmetric(vertical: kDeffaultpadding * 1.5),
          child: Column(
            children: [
              titleHeader,
              mySpacer(height: kDeffaultpadding / 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15.0,
                        width: 15.0,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFFD52B2B))),
                        child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFD52B2B))),
                      ),
                      mySpacer(height: kDeffaultpadding / 4),
                      Text(
                        '2014',
                        style:
                            TextStyle(color: Color(0xFFD52B2B), fontSize: 50),
                      ),
                    ],
                  ),
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: AppTheme.size(context).width * 0.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Diploma In Computer Science',
                          style: ttheme.textTheme.bodyText2.copyWith(
                            fontSize: 18.0,
                            fontFamily: 'OpenSansItalic',
                            fontWeight: FontWeight.bold,
                            color: canvasColor,
                          ),
                        ),
                        mySpacer(height: kDeffaultpadding / 4),
                        Text(
                          'Obtained First Diploma in computer '
                          'Science and operation in Delta State '
                          'Polytechnic-Oghara Delta State '
                          'Nigeria ',
                          style: ttheme.textTheme.bodyText2.copyWith(
                              fontSize: 13,
                              fontFamily: 'OpenSans',
                              color: canvasColor,
                              height: 1.5),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              mySpacer(height: kDeffaultpadding * 2),
              Divider(
                indent: 40.0,
                endIndent: 40.0,
                color: canvasColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: AppTheme.size(context).width * 0.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Higher Diploma In Software '
                          'Development and Design',
                          style: ttheme.textTheme.bodyText2.copyWith(
                            fontSize: 18.0,
                            fontFamily: 'OpenSansItalic',
                            fontWeight: FontWeight.bold,
                            color: canvasColor,
                          ),
                        ),
                        mySpacer(height: kDeffaultpadding / 4),
                        Text(
                          'Higher Diploma in computer Software '
                          'Development and Design ',
                          style: ttheme.textTheme.bodyText2.copyWith(
                              fontSize: 13,
                              fontFamily: 'OpenSans',
                              color: canvasColor,
                              height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  mySpacer(width: kDeffaultpadding * 2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 15.0,
                        width: 15.0,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFFD52B2B))),
                        child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFD52B2B))),
                      ),
                      mySpacer(height: kDeffaultpadding / 4),
                      Text(
                        '2017',
                        style:
                            TextStyle(color: Color(0xFFD52B2B), fontSize: 50.0),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      }

      ///for larger screens below
      else
        return Container(
          color: Colors.black87,
          height: kDeffaultpadding * 20,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              titleHeader,
              mySpacer(height: kDeffaultpadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15.0,
                          width: 15.0,
                          margin: EdgeInsets.only(left: 95),
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xFFD52B2B))),
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFD52B2B))),
                        ),
                        mySpacer(height: kDeffaultpadding / 2),
                        Row(
                          children: [
                            Text(
                              '2014',
                              style: TextStyle(
                                  color: Color(0xFFD52B2B), fontSize: 40),
                            ),
                            mySpacer(width: kDeffaultpadding),
                            Container(
                              constraints: BoxConstraints(maxWidth: 500.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Diploma In Computer Science',
                                    style: ttheme.textTheme.bodyText2.copyWith(
                                      fontSize: 20.0,
                                      fontFamily: 'OpenSansItalic',
                                      fontWeight: FontWeight.bold,
                                      color: canvasColor,
                                    ),
                                  ),
                                  mySpacer(height: kDeffaultpadding / 4),
                                  Text(
                                    'Obtained First Diploma in computer '
                                    'Science and operation in Delta State '
                                    'Polytechnic-Oghara Delta State '
                                    'Nigeria ',
                                    style: ttheme.textTheme.bodyText2.copyWith(
                                        fontSize: 15,
                                        fontFamily: 'OpenSans',
                                        color: canvasColor,
                                        height: 1.5),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              mySpacer(height: kDeffaultpadding),
              Divider(
                indent: 50.0,
                endIndent: 50.0,
                color: canvasColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.green,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 15.0,
                          width: 15.0,
                          margin: EdgeInsets.only(right: 95),
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xFFD52B2B))),
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFD52B2B))),
                        ),
                        mySpacer(height: kDeffaultpadding / 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                  maxWidth: AppTheme.size(context).width * 0.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Higher Diploma In Software '
                                    'Development ',
                                    textAlign: TextAlign.right,
                                    style: ttheme.textTheme.bodyText2.copyWith(
                                      fontSize: 20.0,
                                      fontFamily: 'OpenSansItalic',
                                      fontWeight: FontWeight.bold,
                                      color: canvasColor,
                                    ),
                                  ),
                                  mySpacer(height: kDeffaultpadding / 4),
                                  Text(
                                    'Obtained  '
                                    'Higher Diploma In  Computer Software '
                                    'Development and Design',
                                    textAlign: TextAlign.right,
                                    style: ttheme.textTheme.bodyText2.copyWith(
                                        fontSize: 15,
                                        fontFamily: 'OpenSans',
                                        color: canvasColor,
                                        height: 1.5),
                                  ),
                                ],
                              ),
                            ),
                            mySpacer(width: kDeffaultpadding),
                            Text(
                              '2017',
                              style: TextStyle(
                                  color: Color(0xFFD52B2B), fontSize: 40),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
            ],
          ),
        );
    });
  }
}
