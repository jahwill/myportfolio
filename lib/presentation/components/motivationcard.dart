import 'package:flutter/material.dart';

import '../../deffault_settings.dart';

class MotivationCard extends StatelessWidget {
  const MotivationCard({
    Key key,
    @required this.ttheme,
    this.sWidth,
    this.sHeight,
    this.imgsize,
    this.txtstyle,
  }) : super(key: key);

  final ThemeData ttheme;
  final double sWidth, sHeight, imgsize;
  final TextStyle txtstyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sHeight ?? 225,
      constraints: BoxConstraints(maxWidth: sWidth ?? 400),
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: canvasColor.withOpacity(0.99),
          borderRadius: BorderRadius.all(Radius.circular(7)),
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
          Container(
            width: imgsize ?? 60,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              'assets/icons/rocket.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          RichText(
              text: TextSpan(
                  style: ttheme.textTheme.bodyText2.copyWith(
                      fontFamily: 'OpenSansItalic',
                      fontSize:
                          txtstyle != null ? (txtstyle.fontSize / 1.8) + 5 : 10,
                      color: Colors.blueGrey[800]),
                  children: [
                TextSpan(
                    text: ' I want to code be at the very best of it'
                        ' !\n'
                        'I guess one of the things I would '
                        'want to  '
                        'proudly speak about is how I '
                        'love to code and '
                        '\nThe feeling of seeing your code run as '
                        'intended It\'s wonderful!',
                    style: txtstyle ??
                        ttheme.textTheme.bodyText2.copyWith(
                            fontFamily: 'OpenSansItalic',
                            fontSize: 15.7,
                            color: Colors.blueGrey[800])),
                TextSpan(
                  text: ' ...~Motivation'.toLowerCase(),
                )
              ]))
          // Text(
          //     ' I want to code be at the very best of it'
          //     ' !\n'
          //     'I guess one of the things I would '
          //     'want to  '
          //     'proudly speak about is how I '
          //     'love to code and '
          //     '\nThe feeling of seeing your code run as '
          //     'intended It\'s wonderful!...',
          //     style: txtstyle ??
          //         ttheme.textTheme.bodyText2.copyWith(
          //             fontFamily: 'OpenSansItalic',
          //             fontSize: 15.7,
          //             color: Colors.blueGrey[800])),
        ],
      ),
    );
  }
}
