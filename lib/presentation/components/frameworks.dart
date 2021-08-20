import 'package:flutter/material.dart';

import '../../deffault_settings.dart';

class FrameWorkCard extends StatelessWidget {
  const FrameWorkCard({
    Key key,
    @required this.image,
    @required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    var ttheme = Theme.of(context);
    return Container(
      height: 85.0,
      width: 85.0,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: canvasColor.withOpacity(0.99),
          borderRadius: BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(
                offset: Offset(4, 7),
                color: Colors.blueGrey.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 2),
            BoxShadow(
                offset: Offset(8, 5),
                color: Colors.blueGrey.withOpacity(0.1),
                blurRadius: 15,
                spreadRadius: 2)
          ],
          image: image == null
              ? null
              : DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                      Colors.transparent.withOpacity(0.3), BlendMode.dstIn))),
      child: Center(
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: ttheme.textTheme.headline6.copyWith(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey[800],
          ),
        ),
      ),
    );
  }
}
