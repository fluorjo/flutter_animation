import 'dart:math';

import 'package:flutter/material.dart';

class AppleWatchScreen extends StatefulWidget {
  const AppleWatchScreen({super.key});

  @override
  State<AppleWatchScreen> createState() => _AppleWatchScreenState();
}

class _AppleWatchScreenState extends State<AppleWatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text("Apple Watch"),
      ),
      body: Center(
        child: CustomPaint(
          // 커스텀 페인터를 렌더링하고 크기를 정한다.
          // 그림 그릴 캔버스 영역을 만드는 것.
          painter: AppleWatchPainter(),
          size: const Size(400, 400),
        ),
      ),
    );
  }
}

class AppleWatchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(
      size.width / 2,
      size.width / 2,
    );
    // red

    const startingAngle = -0.5 * pi;

    final redCirclePaint = Paint()
      ..color = Colors.red.shade400.withOpacity(0.25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25;

    final redCircleRadius = (size.width / 2) * 0.9;
    canvas.drawCircle(
      center,
      redCircleRadius,
      redCirclePaint,
    );

    // green

    final greenCirclePaint = Paint()
      ..color = Colors.green.shade400.withOpacity(0.25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25;

    canvas.drawCircle(
      center,
      (size.width / 2) * 0.76,
      greenCirclePaint,
    );
    // blue

    final blueCirclePaint = Paint()
      ..color = Colors.blue.shade400.withOpacity(0.25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25;

    canvas.drawCircle(
      center,
      (size.width / 2) * 0.62,
      blueCirclePaint,
    );

    //red arc

    final reArcRect = Rect.fromCircle(
      center: center,
      radius: redCircleRadius,
    );

    final redArcPaint = Paint()
      ..color = Colors.red.shade400
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      reArcRect,
      startingAngle,
      1.5 * pi,
      false,
      redArcPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    //true 또는 false를 반환해야 하는 메서드
    return false;
  }
}
