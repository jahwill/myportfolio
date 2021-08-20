import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:myportfolio/presentation/gallery/image_gallery_model.dart';

import '../../deffault_settings.dart';

class ProjectGallery extends StatelessWidget {
  ProjectGallery({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
                    iconSize: 30.0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'My Gallery',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFC98602)),
                    ),
                  )
                ],
              ),
              mySpacer(height: kDeffaultpadding / 2),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                      fontWeight: FontWeight.w900,
                                      fontFamily: "OpenSans",
                                      color: Color(0xBC017A78)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kDeffaultpadding,
                      ),
                      Container(
                          height: 300,
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
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                      fontWeight: FontWeight.w900,
                                      fontFamily: "OpenSans",
                                      color: Color(0xBC017A78)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kDeffaultpadding,
                      ),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width - 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: kDeffaultpadding,
                            ),
                            // CustomProgressPainter(
                            //   width: 80,
                            //   context: context,
                            //   height: 80,
                            //   amountalreadysaved: 500,
                            //   totalamount: 1000,
                            // )
                          ],
                        ),
                      ),
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
      ),
    );
  }

  // projectsgallery(BuildContext context) {
  //   var ttheme = Theme.of(context);
  //   return showMaterialModalBottomSheet(
  //     isDismissible: false,
  //     barrierColor: Colors.transparent.withOpacity(0.2),
  //     backgroundColor: Colors.transparent,
  //     bounce: true,
  //     elevation: 5.0,
  //     context: context,
  //     builder: (_) => Container(
  //       height: contextSize.height * 0.9,
  //
  //       // margin: EdgeInsets.only(top: size.height - 50),
  //       decoration: BoxDecoration(
  //           color: canvasColor,
  //           borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(15.0),
  //               topRight: Radius.circular(15.0))),
  //       child: Column(
  //         children: [
  //           Row(
  //             children: [
  //               IconButton(
  //                 icon: Icon(Icons.keyboard_backspace_sharp),
  //                 iconSize: 30.0,
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                   print('asass');
  //                 },
  //               )
  //             ],
  //           ),
  //           Expanded(
  //             child: SingleChildScrollView(
  //               child: Column(
  //                 children: [
  //                   Padding(
  //                     padding: const EdgeInsets.only(left: 18.0),
  //                     child: Row(
  //                       children: [
  //                         Text(
  //                           'Flutter UI\'s',
  //                           style: ttheme.textTheme.subtitle1.copyWith(
  //                               fontWeight: FontWeight.w900,
  //                               fontFamily: "greycliff",
  //                               color: Color(0xBC017A78)),
  //                         )
  //                       ],
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: kDeffaultpadding,
  //                   ),
  //                   Container(
  //                       height: 200,
  //                       width: MediaQuery.of(context).size.width - 10,
  //                       child: projectimages.length == 0
  //                           ? Center(
  //                               child: Container(
  //                                 height: 50,
  //                                 width: 50,
  //                                 child: CircularProgressIndicator(
  //                                   backgroundColor: Colors.grey,
  //                                 ),
  //                               ),
  //                             )
  //                           : ListView.builder(
  //                               scrollDirection: Axis.horizontal,
  //                               physics: BouncingScrollPhysics(),
  //                               itemCount: projectimages.length,
  //                               itemBuilder: (context, index) => Card(
  //                                     elevation: 2,
  //                                     margin: EdgeInsets.only(right: 10),
  //                                     child: Container(
  //                                       constraints:
  //                                           BoxConstraints(maxWidth: 165.0),
  //                                       child: Image.asset(
  //                                         projectimages[index].address,
  //                                         fit: BoxFit.contain,
  //                                       ),
  //                                     ),
  //                                   ))),
  //                   SizedBox(
  //                     height: kDeffaultpadding,
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.only(left: 18.0),
  //                     child: Row(
  //                       children: [
  //                         Text(
  //                           'Flutter Animations',
  //                           style: ttheme.textTheme.subtitle1.copyWith(
  //                               fontWeight: FontWeight.w900,
  //                               fontFamily: "greycliff",
  //                               color: Color(0xBC017A78)),
  //                         )
  //                       ],
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: kDeffaultpadding,
  //                   ),
  //                   Container(
  //                     height: 150,
  //                     width: MediaQuery.of(context).size.width - 10,
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.start,
  //                       crossAxisAlignment: CrossAxisAlignment.center,
  //                       children: [
  //                         // SizedBox(
  //                         //     height: 100, width: 100, child: RippleProject()),
  //                         SizedBox(
  //                           width: kDeffaultpadding,
  //                         ),
  //                         // CustomProgressPainter(
  //                         //   width: 80,
  //                         //   context: context,
  //                         //   height: 80,
  //                         //   amountalreadysaved: 500,
  //                         //   totalamount: 1000,
  //                         // )
  //                       ],
  //                     ),
  //                   ),
  //                   // : ListView.builder(
  //                   //     scrollDirection: Axis.horizontal,
  //                   //     physics: BouncingScrollPhysics(),
  //                   //     itemCount: projectimages.length,
  //                   //     itemBuilder: (context, index) => Card(
  //                   //           elevation: 2,
  //                   //           margin: EdgeInsets.only(right: 10),
  //                   //           child: Container(
  //                   //             constraints:
  //                   //                 BoxConstraints(maxWidth: 165.0),
  //                   //             child: Image.asset(
  //                   //               projectimages[index].address,
  //                   //               fit: BoxFit.contain,
  //                   //             ),
  //                   //           ),
  //                   //         ))),
  //                   // SizedBox(
  //                   //   height: kDeffaultpadding,
  //                   // ),
  //                   // Padding(
  //                   //   padding: const EdgeInsets.only(left: 18.0),
  //                   //   child: Row(
  //                   //     children: [
  //                   //       Text(
  //                   //         'Web Development',
  //                   //         style: ttheme.textTheme.subtitle1.copyWith(
  //                   //             fontWeight: FontWeight.w900,
  //                   //             fontFamily: "greycliff",
  //                   //             color: Color(0xBC017A78)),
  //                   //       ),
  //                   //     ],
  //                   //   ),
  //                   // ),
  //                   // SizedBox(
  //                   //   height: kDeffaultpadding,
  //                   // ),
  //                   // Container(
  //                   //     height: 200,
  //                   //     width: MediaQuery.of(context).size.width - 10,
  //                   //     child: projectimages.length == 0
  //                   //         ? Center(
  //                   //             child: Container(
  //                   //               height: 50,
  //                   //               width: 50,
  //                   //               child: CircularProgressIndicator(
  //                   //                 backgroundColor: Colors.grey,
  //                   //               ),
  //                   //             ),
  //                   //           )
  //                   //         : ListView.builder(
  //                   //             scrollDirection: Axis.horizontal,
  //                   //             physics: BouncingScrollPhysics(),
  //                   //             itemCount: projectimages.length,
  //                   //             itemBuilder: (context, index) => Card(
  //                   //                   elevation: 2,
  //                   //                   margin: EdgeInsets.only(right: 10),
  //                   //                   child: Container(
  //                   //                     constraints:
  //                   //                         BoxConstraints(maxWidth: 165.0),
  //                   //                     child: Image.asset(
  //                   //                       projectimages[index].address,
  //                   //                       fit: BoxFit.contain,
  //                   //                     ),
  //                   //                   ),
  //                   //                 ))),
  //
  //                   SizedBox(
  //                     height: kDeffaultpadding,
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}

// class RippleProject extends StatefulWidget {
//   final Color color;
//   final double size;
//
//   const RippleProject({
//     Key? key,
//     this.color = Colors.cyan,
//     this.size = 40,
//   }) : super(key: key);
//   @override
//   _RippleProjectState createState() => _RippleProjectState();
// }
//
// class _RippleProjectState extends State<RippleProject>
//     with TickerProviderStateMixin {
//   AnimationController? _animationController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     _animationController =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 2000))
//           ..repeat();
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//
//     _animationController!.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: CustomPaint(
//           painter: WaveCustomPaint(_animationController, color: widget.color),
//           child: SizedBox(
//             width: widget.size * 4.125,
//             height: widget.size * 4.125,
//             child: Center(
//                 child: ClipRRect(
//               borderRadius: BorderRadius.circular(80),
//               child: DecoratedBox(
//                 decoration: BoxDecoration(
//                   gradient: RadialGradient(
//                     colors: <Color?>[
//                       widget.color,
//                       Color.lerp(widget.color, Colors.black, .05)
//                     ] as List<Color>,
//                   ),
//                 ),
//                 child: ScaleTransition(
//                   scale: Tween(begin: 0.9, end: 1.0).animate(CurvedAnimation(
//                       parent: _animationController!, curve: CurveSmooth())),
//                   child: Icon(
//                     Icons.wifi_tethering,
//                     size: 20.0,
//                   ),
//                 ),
//               ),
//             )),
//           ),
//         ),
//       ),
//     );
//   }
// }
