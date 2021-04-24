import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:myportfolio/components/ripplewaveanimation/ripplesplash.dart';
import 'package:myportfolio/presentation/gallery/image_gallery_model.dart';

import '../../deffault_settings.dart';

class ProjectGallery {
  final contextSize;

  ProjectGallery({@required this.contextSize});
  // Gallery gallery = Gallery();
  projectsgallery(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    var ttheme = Theme.of(context);
    return showMaterialModalBottomSheet(
      barrierColor: Colors.transparent.withOpacity(0.2),
      backgroundColor: Colors.transparent,
      bounce: true,
      elevation: 5.0,
      context: context,
      builder: (_) => Container(
        height: contextSize.height * 0.9,
        // margin: EdgeInsets.only(top: size.height - 50),
        decoration: BoxDecoration(
            color: canvasColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.keyboard_backspace_sharp),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context);
                    print('asass');
                  },
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        children: [
                          Text(
                            'Flutter UI\'s',
                            style: ttheme.textTheme.subtitle1.copyWith(
                                fontWeight: FontWeight.w900,
                                fontFamily: "greycliff",
                                color: Color(0xBC017A78)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: kDeffaultpadding,
                    ),
                    Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width - 10,
                        child: projectimages.length == 0
                            ? Center(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: CircularProgressIndicator(
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                              )
                            : ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: projectimages.length,
                                itemBuilder: (context, index) => Card(
                                      elevation: 2,
                                      margin: EdgeInsets.only(right: 10),
                                      child: Container(
                                        constraints:
                                            BoxConstraints(maxWidth: 165.0),
                                        child: Image.asset(
                                          projectimages[index].address,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ))),
                    SizedBox(
                      height: kDeffaultpadding,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        children: [
                          Text(
                            'Flutter Animations',
                            style: ttheme.textTheme.subtitle1.copyWith(
                                fontWeight: FontWeight.w900,
                                fontFamily: "greycliff",
                                color: Color(0xBC017A78)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: kDeffaultpadding,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width - 10,
                      child: Center(
                        child: RippleAnimation(),
                        // child: Container(
                        //   height: 50,
                        //   width: 50,
                        //   child: CircularProgressIndicator(
                        //     backgroundColor: Colors.grey,
                        //   ),
                      ),
                    ),
                    // : ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     physics: BouncingScrollPhysics(),
                    //     itemCount: projectimages.length,
                    //     itemBuilder: (context, index) => Card(
                    //           elevation: 2,
                    //           margin: EdgeInsets.only(right: 10),
                    //           child: Container(
                    //             constraints:
                    //                 BoxConstraints(maxWidth: 165.0),
                    //             child: Image.asset(
                    //               projectimages[index].address,
                    //               fit: BoxFit.contain,
                    //             ),
                    //           ),
                    //         ))),
                    // SizedBox(
                    //   height: kDeffaultpadding,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 18.0),
                    //   child: Row(
                    //     children: [
                    //       Text(
                    //         'Web Development',
                    //         style: ttheme.textTheme.subtitle1.copyWith(
                    //             fontWeight: FontWeight.w900,
                    //             fontFamily: "greycliff",
                    //             color: Color(0xBC017A78)),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: kDeffaultpadding,
                    // ),
                    // Container(
                    //     height: 200,
                    //     width: MediaQuery.of(context).size.width - 10,
                    //     child: projectimages.length == 0
                    //         ? Center(
                    //             child: Container(
                    //               height: 50,
                    //               width: 50,
                    //               child: CircularProgressIndicator(
                    //                 backgroundColor: Colors.grey,
                    //               ),
                    //             ),
                    //           )
                    //         : ListView.builder(
                    //             scrollDirection: Axis.horizontal,
                    //             physics: BouncingScrollPhysics(),
                    //             itemCount: projectimages.length,
                    //             itemBuilder: (context, index) => Card(
                    //                   elevation: 2,
                    //                   margin: EdgeInsets.only(right: 10),
                    //                   child: Container(
                    //                     constraints:
                    //                         BoxConstraints(maxWidth: 165.0),
                    //                     child: Image.asset(
                    //                       projectimages[index].address,
                    //                       fit: BoxFit.contain,
                    //                     ),
                    //                   ),
                    //                 ))),

                    SizedBox(
                      height: kDeffaultpadding,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class animateripple extends RippleAnimation {
  @override
  RoutePg() {}
}
