import 'package:tf_ecommerce/SRC/exports.dart';

class Bubble extends StatelessWidget {
  const Bubble({
    super.key,
    this.scale,
  });
  final double? scale;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return CustomPaint(
      size: Size(scale ?? size.width,
          ((scale ?? size.width) * 0.7380281690140845).toDouble()),
      painter: _BubbleCustomPainter(),
    );
  }
}

class _BubbleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3001662, size.height * 0.3291954);
    path_0.cubicTo(
        size.width * -0.1354034,
        size.height * 0.1563584,
        size.width * 0.3448197,
        size.height * -0.5110076,
        size.width * 0.6393014,
        size.height * -0.6562366);
    path_0.cubicTo(
        size.width * 0.9337831,
        size.height * -0.8014618,
        size.width * 1.259394,
        size.height * -0.5957328,
        size.width * 1.366577,
        size.height * -0.1967214);
    path_0.cubicTo(
        size.width * 1.473758,
        size.height * 0.2022889,
        size.width * 1.270724,
        size.height * 0.5144771,
        size.width * 1.010068,
        size.height * 0.6759122);
    path_0.cubicTo(
        size.width * 0.7494141,
        size.height * 0.8373511,
        size.width * 0.7357380,
        size.height * 0.5020305,
        size.width * 0.3001662,
        size.height * 0.3291954);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffD9E4FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 1.434885, size.height * -0.2205691);
    path_1.cubicTo(
        size.width * 1.790952,
        size.height * 0.1607683,
        size.width * 1.161192,
        size.height * 0.5357863,
        size.width * 0.8480028,
        size.height * 0.5209695);
    path_1.cubicTo(
        size.width * 0.5348141,
        size.height * 0.5061489,
        size.width * 0.2897887,
        size.height * 0.1501260,
        size.width * 0.3007268,
        size.height * -0.2742332);
    path_1.cubicTo(
        size.width * 0.3116620,
        size.height * -0.6985916,
        size.width * 0.5744197,
        size.height * -1.030592,
        size.width * 0.8876085,
        size.height * -1.015771);
    path_1.cubicTo(
        size.width * 1.200797,
        size.height * -1.000954,
        size.width * 1.078814,
        size.height * -0.6019084,
        size.width * 1.434885,
        size.height * -0.2205691);
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
