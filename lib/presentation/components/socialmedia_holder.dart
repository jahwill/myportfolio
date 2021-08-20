import 'package:flutter/material.dart';

class SocialMediaHolder extends StatelessWidget {
  final String imageurl;
  final Color color;
  final Function tap;
  final double elevation;
  final double size;

  const SocialMediaHolder(
      {Key key,
      this.imageurl,
      this.color,
      this.tap,
      this.elevation = 4,
      this.size = 43})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, elevation),
                color: Colors.blueGrey,
                blurRadius: elevation,
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
