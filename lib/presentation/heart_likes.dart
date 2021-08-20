import "package:flutter/material.dart";

import '../deffault_settings.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class HeartLikes extends StatefulWidget {
  final Color txtcolor;
  final Color heartcolor;
  const HeartLikes({
    Key key,
    this.txtcolor = Colors.white,
    this.heartcolor = Colors.pink,
  }) : super(key: key);

  @override
  _HeartLikesState createState() => _HeartLikesState();
}

class _HeartLikesState extends State<HeartLikes> {
  Color color = Colors.grey;
  int _likes = 0;
  @override
  Widget build(BuildContext context) {
    // CollectionReference likes =
    //     FirebaseFirestore.instance.collection("numberofLikes");

    // likeMe() async {
    //   DocumentReference documentReference = FirebaseFirestore.instance
    //       .collection("numberofLikes")
    //       .doc("ckVzGE0oXDdj477d5exJ");
    //   try {
    //     return FirebaseFirestore.instance.runTransaction((transaction) async {
    //       DocumentSnapshot snapshot = await transaction.get(documentReference);
    //       if (!snapshot.exists) {
    //         throw 'can not like right now';
    //       }
    //
    //       ///line below checks the database before increment || decrement the
    //       ///count
    //       int likesIncrement = color == widget.heartcolor
    //           ? snapshot["likes"] - 1
    //           : snapshot["likes"] + 1;
    //       //
    //       await transaction
    //           .update(documentReference, {"likes": likesIncrement});
    //     });
    //   } catch (error) {
    //     print('something went wrong check your connection');
    //   } finally {
    //     print("code executed to the end");
    //   }
    //
    //   //
    // }

    var ttheme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDeffaultpadding / 2),
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  // likeMe();
                  color == widget.heartcolor
                      ? color = Colors.grey
                      : color = widget.heartcolor;
                  color == widget.heartcolor ? _likes += 1 : _likes -= 1;
                });
              },
              child: Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
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
            '120 likes',
            style: ttheme.textTheme.subtitle2.copyWith(color: widget.txtcolor),
          ),

          // FutureBuilder(
          //     future: likes.doc("ckVzGE0oXDdj477d5exJ").get(),
          //     builder: (BuildContext context,
          //         AsyncSnapshot<DocumentSnapshot> snapshot) {
          //       if (snapshot.hasError) {
          //         return Text(
          //           '0 likes',
          //           style: ttheme.textTheme.subtitle2
          //               .copyWith(color: widget.txtcolor),
          //         );
          //       }
          //       if (snapshot.hasData && !snapshot.data.exists) {
          //         return Text(
          //           'no likes',
          //           style: ttheme.textTheme.subtitle2
          //               .copyWith(color: widget.txtcolor),
          //         );
          //       }
          //       if (snapshot.connectionState == ConnectionState.done) {
          //         Map<String, dynamic> data = snapshot.data.data();
          //         _likes = data["likes"];
          //         return Text(
          //           '${data["likes"]} likes',
          //           style: ttheme.textTheme.subtitle2
          //               .copyWith(color: widget.txtcolor),
          //         );
          //       }
          //       return Text(
          //         '0 likes',
          //         style: ttheme.textTheme.subtitle2
          //             .copyWith(color: widget.txtcolor),
          //       );
          //     })
        ],
      ),
    );
  }
}
