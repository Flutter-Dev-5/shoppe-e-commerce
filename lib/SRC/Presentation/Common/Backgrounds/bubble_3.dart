import 'package:tf_ecommerce/SRC/exports.dart';

class BubbleThree extends StatelessWidget {
  const BubbleThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return CustomPaint(
      size: Size(size.width, size.width * 0.8213333333333334),
      painter: _BubbleThreePainter(),
    );
  }
}

class _BubbleThreePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3979653, size.height * 0.5103604);
    path_0.cubicTo(
        size.width * 0.3099093,
        size.height * 0.9302727,
        size.width * -0.1224128,
        size.height * 0.5230519,
        size.width * -0.1813475,
        size.height * 0.2109656);
    path_0.cubicTo(
        size.width * -0.2402819,
        size.height * -0.1011214,
        size.width * -0.1633208,
        size.height * -0.3822695,
        size.width * 0.06455653,
        size.height * -0.4943669);
    path_0.cubicTo(
        size.width * 0.2924347,
        size.height * -0.6064643,
        size.width * 0.4785787,
        size.height * -0.4203864,
        size.width * 0.5790960,
        size.height * -0.1756175);
    path_0.cubicTo(
        size.width * 0.6796160,
        size.height * 0.06915260,
        size.width * 0.4860240,
        size.height * 0.09045032,
        size.width * 0.3979653,
        size.height * 0.5103604);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffF2F5FE).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 1.082568, size.height * 0.2109545);
    path_1.cubicTo(
        size.width * 1.235947,
        size.height * -0.04305455,
        size.width * 1.406296,
        size.height * 0.3874221,
        size.width * 1.406296,
        size.height * 0.6051039);
    path_1.cubicTo(
        size.width * 1.406296,
        size.height * 0.8227890,
        size.width * 1.261357,
        size.height * 0.9992565,
        size.width * 1.082568,
        size.height * 0.9992565);
    path_1.cubicTo(
        size.width * 0.9037760,
        size.height * 0.9992565,
        size.width * 0.7352427,
        size.height * 0.8335195,
        size.width * 0.7588373,
        size.height * 0.6051039);
    path_1.cubicTo(
        size.width * 0.7824347,
        size.height * 0.3766883,
        size.width * 0.9291893,
        size.height * 0.4649643,
        size.width * 1.082568,
        size.height * 0.2109545);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff004BFE).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
