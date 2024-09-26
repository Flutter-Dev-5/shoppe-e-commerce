import 'package:tf_ecommerce/SRC/exports.dart';

class BubbleOne extends StatelessWidget {
  const BubbleOne({
    super.key,
    this.scale,
  });
  final double? scale;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return CustomPaint(
      size: Size(scale ?? size.width,
          ((scale ?? size.width) * 1.0106666666666666).toDouble()),
      painter: _Bubble_1_Painter(),
    );
  }
}

class _Bubble_1_Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5360213, size.height * 0.7027177);
    path_0.cubicTo(
        size.width * 0.4297307,
        size.height * 1.114625,
        size.width * -0.05211760,
        size.height * 0.6811873,
        size.width * -0.1632509,
        size.height * 0.4090264);
    path_0.cubicTo(
        size.width * -0.2743840,
        size.height * 0.1368649,
        size.width * -0.1414915,
        size.height * -0.1729058,
        size.width * 0.1335725,
        size.height * -0.2828654);
    path_0.cubicTo(
        size.width * 0.4086373,
        size.height * -0.3928259,
        size.width * 0.6333280,
        size.height * -0.2102960,
        size.width * 0.7546613,
        size.height * 0.02980950);
    path_0.cubicTo(
        size.width * 0.8759947,
        size.height * 0.2699156,
        size.width * 0.6423120,
        size.height * 0.2908074,
        size.width * 0.5360213,
        size.height * 0.7027177);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffD9E4FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1146656, size.height * -0.3462322);
    path_1.cubicTo(
        size.width * 0.3691680,
        size.height * -0.6887493,
        size.width * 0.6518267,
        size.height * -0.1082741,
        size.width * 0.6518267,
        size.height * 0.1852612);
    path_1.cubicTo(
        size.width * 0.6518267,
        size.height * 0.4787968,
        size.width * 0.4113333,
        size.height * 0.7167546,
        size.width * 0.1146656,
        size.height * 0.7167546);
    path_1.cubicTo(
        size.width * -0.1820005,
        size.height * 0.7167546,
        size.width * -0.4224960,
        size.height * 0.4787968,
        size.width * -0.4224960,
        size.height * 0.1852612);
    path_1.cubicTo(
        size.width * -0.4224960,
        size.height * -0.1082741,
        size.width * -0.1398360,
        size.height * -0.003712797,
        size.width * 0.1146656,
        size.height * -0.3462322);
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
