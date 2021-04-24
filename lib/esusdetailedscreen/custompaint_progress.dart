import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class PainterCircularProgress extends CustomPainter {
  Color borderColor;
  Color progressColor;
  double percentage;
  double width;

  PainterCircularProgress(
      {this.borderColor, this.progressColor, this.percentage, this.width});
  @override
  void paint(Canvas canvas, Size size) {
    Paint line = Paint()
      ..color = borderColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Paint paintingComplete = Paint()
      ..color = progressColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, line);
    double arcAngle = 2 * pi * (percentage / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        arcAngle, false, paintingComplete);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CustomProgressPainter extends StatefulWidget {
  CustomProgressPainter(
      {this.context,
      this.height,
      this.width,
      this.amountalreadysaved,
      this.totalamount});

  final BuildContext context;
  final double height, width, amountalreadysaved, totalamount;

  @override
  _CustomProgressPainterState createState() => _CustomProgressPainterState();
}

class _CustomProgressPainterState extends State<CustomProgressPainter>
    with SingleTickerProviderStateMixin {
  double _percentageValue;
  double _newPercentageValue;
  Color color;
  Color nwcolor;
  AnimationController _progressanimation;
  @override
  void initState() {
    _progressanimation =
        AnimationController(vsync: this, duration: Duration(milliseconds: 3000))
          ..addListener(() {
            setState(() {
              _percentageValue = lerpDouble(_percentageValue,
                  _newPercentageValue, _progressanimation.value);
              // _percentageValue = lerpDouble(_percentageValue,
              //     _newPercentageValue, _progressanimation.value);
            });
          });
    color = Colors.yellow;
    _percentageValue = 0.0;
    _newPercentageValue = 0.0;
    setprogressloader();
    super.initState();
  }

  @override
  void dispose() {
    _progressanimation.dispose();
    super.dispose();
  }

  Future setprogressloader() async {
    await Future.delayed(Duration(seconds: 6), () {
      setState(() {
        _percentageValue = _newPercentageValue;

        _newPercentageValue =
            widget.amountalreadysaved * 100 / widget.totalamount;

        // if (_newPercentageValue >= 35.0) {
        //   color = Colors.green;
        //
        //   // _percentageValue = 20.0;
        //   // _newPercentageValue = 0.0;
        // }
        _progressanimation.forward(from: 0.0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: CustomPaint(
        foregroundPainter: PainterCircularProgress(
            borderColor: Colors.grey[300],
            progressColor: _percentageValue == 100.0
                ? Color.lerp(Theme.of(context).primaryColor, Colors.green,
                    _progressanimation.value)
                : Theme.of(context).primaryColor,
            percentage: _percentageValue,
            width: 4.0),
        child: Center(
          child: Text(
            '${_percentageValue.truncateToDouble()}%',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
