import "package:flutter/material.dart";

import '../deffault_settings.dart';

class HeartLikes extends StatefulWidget {
  const HeartLikes({
    Key key,
  }) : super(key: key);

  @override
  _HeartLikesState createState() => _HeartLikesState();
}

class _HeartLikesState extends State<HeartLikes> {
  Color color = Colors.grey;
  int _likes = 0;
  @override
  Widget build(BuildContext context) {
    var ttheme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDeffaultpadding / 2),
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                setState(() {
                  color == Colors.pink
                      ? color = Colors.grey
                      : color = Colors.pink;
                  color == Colors.pink ? _likes += 1 : _likes -= 1;
                });
              },
              child: Container(
                height: 27.0,
                width: 27.0,
                decoration: BoxDecoration(
                  // color: Colors.pinkAccent,
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset('assets/icons/love_heart.png',
                    fit: BoxFit.cover, color: color
                    // Colors.pink[600],
                    ),
              ),
            ),
          ),
          SizedBox(
            width: kDeffaultpadding / 3,
          ),
          Text(
            '$_likes likes',
            style: ttheme.textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}
