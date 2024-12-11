import 'package:tf_ecommerce/SRC/exports.dart';

class VoucherContainer extends StatelessWidget {
  final Widget containerWidget;
  final bool isSelected;
  const VoucherContainer(
      {super.key, required this.containerWidget, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: isSelected
          ? CustomPaint(
              size: Size(size.width, 100),
              painter: SelectedPainter(),
              child: containerWidget,
            )
          : CustomPaint(
              size: Size(size.width, 100),
              painter: VoucherBorderPainter(),
              child: containerWidget,
            ),
    );
  }
}

class VoucherBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff83B49D)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path();
    //bottom left border
    path.moveTo(0.0, 32);
    path.lineTo(0, 46);
    path.moveTo(0.0, 64);
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(0, size.height, 20, size.height);

    //bottom right border
    path.lineTo(size.width - 20, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 20);
    path.moveTo(size.width - 20, 0);

    //top right borders
    path.quadraticBezierTo(size.width, 0, size.width, 20);
    path.moveTo(size.width, 20);
    path.lineTo(size.width, 46);
    path.moveTo(size.width, 64);
    path.lineTo(size.width, size.height - 20);

    // top left borders
    path.moveTo(0.0, 32);
    path.lineTo(0, 20);
    path.quadraticBezierTo(0, 0, 20, 0);
    path.lineTo(size.width - 20, 0);
    path.moveTo(0, 0);
    path.close();

    double cutRadius = 10;
    path.addArc(
        Rect.fromCircle(
            center: Offset(0, size.height * 0.5), radius: cutRadius),
        -1.57,
        3.14);
    path.addArc(
        Rect.fromCircle(
            center: Offset(size.width, size.height * 0.5), radius: cutRadius),
        1.57,
        3.14);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class SelectedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xffFF5790).withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    final path = Path();
    //bottom left border
    path.moveTo(0.0, 32);
    path.lineTo(0, 46);
    path.moveTo(0.0, 64);
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(0, size.height, 20, size.height);

    //bottom right border
    path.lineTo(size.width - 20, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 20);
    path.moveTo(size.width - 20, 0);

    //top right borders
    path.quadraticBezierTo(size.width, 0, size.width, 20);
    path.moveTo(size.width, 20);
    path.lineTo(size.width, 46);
    path.moveTo(size.width, 64);
    path.lineTo(size.width, size.height - 20);

    // top left borders
    path.moveTo(0.0, 32);
    path.lineTo(0, 20);
    path.quadraticBezierTo(0, 0, 20, 0);
    path.lineTo(size.width - 20, 0);
    path.moveTo(0, 0);
    path.close();

    double cutRadius = 10;
    path.addArc(
        Rect.fromCircle(
            center: Offset(0, size.height * 0.5), radius: cutRadius),
        -1.57,
        3.14);
    path.addArc(
        Rect.fromCircle(
            center: Offset(size.width, size.height * 0.5), radius: cutRadius),
        1.57,
        3.14);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
