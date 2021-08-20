import 'package:flutter/material.dart';

import '../deffault_settings.dart';

class TextCard extends StatelessWidget {
  const TextCard(
      {Key key,
      this.sWidth = 400,
      this.sHeight = 225,
      this.imgsize,
      this.txtstyle,
      this.text,
      this.imageUrl,
      this.titlestyle,
      this.titleText,
      this.elevation,
      this.childWidget})
      : super(key: key);

  final double sWidth, sHeight, imgsize, elevation;
  final TextStyle txtstyle, titlestyle;
  final String imageUrl, text, titleText;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sHeight,
      constraints: BoxConstraints(
        minWidth: sWidth,
      ),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: canvasColor.withOpacity(0.99),
          borderRadius: BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            elevation == null
                ? BoxShadow(
                    offset: Offset(4, 7),
                    color: Colors.blueGrey.withOpacity(0.3),
                    blurRadius: 7,
                    spreadRadius: 3)
                : BoxShadow(
                    offset: Offset(elevation, elevation),
                    color:
                        Colors.blueGrey.withOpacity(elevation == 0 ? 0.0 : 0.3),
                    blurRadius: elevation,
                    spreadRadius: elevation),
            elevation == null
                ? BoxShadow(
                    offset: Offset(8, 5),
                    color: Colors.blueGrey.withOpacity(0.1),
                    blurRadius: 15,
                    spreadRadius: 2)
                : BoxShadow(
                    offset: Offset(elevation, elevation),
                    color:
                        Colors.blueGrey.withOpacity(elevation == 0 ? 0.0 : 0.1),
                    blurRadius: elevation,
                    spreadRadius: elevation)
          ]),
      child: Column(
        children: [
          imageUrl == null
              ? SizedBox.shrink()
              : Container(
                  width: imgsize ?? 60,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
          SizedBox(height: 5),
          Text(
            titleText ?? 'Title Here',
            style: titlestyle ??
                Theme.of(context).textTheme.headline6.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.blueGrey),
          ),
          SizedBox(height: 5),
          RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      fontFamily: 'OpenSansItalic',
                      fontSize:
                          txtstyle != null ? (txtstyle.fontSize / 1.8) + 5 : 10,
                      color: Colors.blueGrey[800]),
                  children: [
                TextSpan(
                    text: text ??
                        ' Sed ut perspiciatis unde omnis iste natus error'
                            'sit voluptatem accusantium doloremque laudantium, totam rem aperiam',
                    style: txtstyle ??
                        Theme.of(context).textTheme.bodyText2.copyWith(
                            fontFamily: 'OpenSansItalic',
                            fontSize: 15.7,
                            color: Colors.blueGrey[800])),
              ])),
          childWidget ?? SizedBox.shrink()
        ],
      ),
    );
  }
}
