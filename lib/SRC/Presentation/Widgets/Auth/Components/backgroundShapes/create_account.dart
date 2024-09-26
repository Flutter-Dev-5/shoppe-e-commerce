import 'package:flutter/material.dart';

class BlobPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =
          Colors.lightBlue.shade50 // Adjust this to match the shape's color
      ..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(0, size.height * 0.4);
    path.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.1,
      size.width * 0.4,
      size.height * 0.2,
    );
    path.quadraticBezierTo(
      size.width * 0.7,
      size.height * 0.3,
      size.width * 0.8,
      size.height * 0.7,
    );
    path.quadraticBezierTo(
      size.width * 0.9,
      size.height * 1.0,
      size.width * 0.6,
      size.height,
    );
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
    // path2.lineTo(0, size.height);
    // path2.lineTo(0, 0);
    // path2.close();

    // Draw the blobs
    // canvas.drawPath(path1, paint1);
    // canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
