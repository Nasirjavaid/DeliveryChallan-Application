import 'dart:math';

import 'package:flutter/material.dart';

class X1Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // create a bounding square, based on the centre and radius of the arc
    Rect rect = new Rect.fromCircle(
      center: new Offset(15.0, 0.0),
      radius: 180.0,
    );

    // a fancy rainbow gradient
    final Gradient gradient = new RadialGradient(
      colors: <Color>[
        Colors.blue.withOpacity(1),
        Colors.blue.withOpacity(1),
        Colors.blue.withOpacity(1),
        Colors.blue.withOpacity(1),
        Colors.blue.withOpacity(1),
      ],
      stops: [
        0.0,
        0.0,
        0.0,
        0.0,
        0.0,
      ],
    );

    // create the Shader from the gradient and the bounding square
    final Paint paint = new Paint()..shader = gradient.createShader(rect);

    // and draw an arc
    canvas.drawArc(rect, pi / 4, pi * 12 / 4, true, paint);
  }

  @override
  bool shouldRepaint(X1Painter oldDelegate) {
    return true;
  }
}

class X1Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(title: const Text('Arcs etc')),
      body: SizedBox(
              child: new CustomPaint(
          painter: new X1Painter(),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(
//     new MaterialApp(
//       theme: new ThemeData.dark(),
//       home: new X1Demo(),
//     ),
//   );
//}