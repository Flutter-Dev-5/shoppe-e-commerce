import 'package:tf_ecommerce/SRC/exports.dart';

class CircularDashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double dashSpacing;

  CircularDashedBorderPainter({
    required this.color,
    required this.strokeWidth,
    required this.dashLength,
    required this.dashSpacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round // Rounded ends for dashes
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final double radius = (size.width / 2) - strokeWidth / 2;
    final double circumference = 2 * pi * radius;
    final double stepLength = dashLength + dashSpacing;
    final int dashCount = (circumference / stepLength).floor();

    for (int i = 0; i < dashCount; i++) {
      final double startAngle = (i * stepLength) / radius;
      final double endAngle = startAngle + (dashLength / radius);

      final Offset startPoint = Offset(
        size.width / 2 + radius * cos(startAngle),
        size.height / 2 + radius * sin(startAngle),
      );

      final Offset endPoint = Offset(
        size.width / 2 + radius * cos(endAngle),
        size.height / 2 + radius * sin(endAngle),
      );

      canvas.drawLine(startPoint, endPoint, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
