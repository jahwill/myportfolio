import 'package:flutter/animation.dart';
import 'dart:math' as math show sin, pi;

class CurveSmooth extends Curve {
  // const PulsateCurve();
  @override
  double transform(double t) {
    if (t == 1 || t == 0) {
      return 0.01;
    }
    return math.sin(t * math.pi);
  }
}
//
