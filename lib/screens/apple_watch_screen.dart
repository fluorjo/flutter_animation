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
    // TODO: implement paint

    final rect = Rect.fromLTWH(
      0,
      0,
      size.width,
      size.height,
    );

    final paint = Paint()..color = Colors.blue;
    canvas.drawRect(rect, paint);

    final circlePaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;

    canvas.drawCircle(
      Offset(size.width / 2, size.width / 2),
      size.width / 2,
      circlePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    //true 또는 false를 반환해야 하는 메서드
    return false;
  }
}
