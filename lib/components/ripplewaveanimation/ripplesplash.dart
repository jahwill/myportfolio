import 'dart:async';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:myportfolio/presentation/portfolio_profile_page.dart';

import 'curve.dart';
import 'custom_painter.dart';

class RippleAnimation extends StatefulWidget {
  final Color color;
  final double size;

  const RippleAnimation({
    Key key,
    this.color = Colors.cyan,
    this.size = 80,
  }) : super(key: key);
  @override
  _RippleAnimationState createState() => _RippleAnimationState();
}

class _RippleAnimationState extends State<RippleAnimation>
    with TickerProviderStateMixin {
  AnimationController _animationController;

  var time = Duration(seconds: 10);
  @override
  RoutePg() async {
    await Future.delayed(time, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyProfile()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 2000))
          ..repeat();
    RoutePg();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CustomPaint(
                painter:
                    WaveCustomPaint(_animationController, color: widget.color),
                child: SizedBox(
                  width: widget.size * 4.125,
                  height: widget.size * 4.125,
                  child: Center(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          colors: <Color>[
                            widget.color,
                            Color.lerp(widget.color, Colors.black, .05)
                          ],
                        ),
                      ),
                      child: ScaleTransition(
                        scale: Tween(begin: 0.9, end: 1.0).animate(
                            CurvedAnimation(
                                parent: _animationController,
                                curve: CurveSmooth())),
                        child: Icon(
                          Icons.wifi_tethering,
                          size: 20.0,
                        ),
                      ),
                    ),
                  )),
                ),
              ),
            ),
            // Container(
            //   height: 50,
            //   width: 159,
            //   // width: MediaQuery.of(context).size.width,
            //   // color: Colors.white,
            //   child: Text(
            //     'Fin Tech',
            //     style: Theme.of(context)
            //         .textTheme
            //         .headline4
            //         .copyWith(color: Colors.white),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class HomePg extends StatefulWidget {
  @override
  _HomePState createState() => _HomePState();
}

class _HomePState extends State<HomePg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Color(0xFFEFF2F8),
      body: Center(
          child: Text(
        'welcome',
        style: Theme.of(context).textTheme.headline4,
      )),
    );
  }
}
