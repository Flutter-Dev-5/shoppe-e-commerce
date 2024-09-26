import 'package:tf_ecommerce/SRC/exports.dart';

class BubbleTwo extends StatelessWidget {
  const BubbleTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return CustomPaint(
      size: Size(size.width, size.height),
      painter: _BubbleTreePainter(),
    );
  }
}

class _BubbleTreePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.420245, size.height * 0.9084310);
    path_0.cubicTo(
        size.width * 1.670829,
        size.height * 1.069616,
        size.width * 1.025528,
        size.height * 1.110042,
        size.width * 0.7433813,
        size.height * 1.067704);
    path_0.cubicTo(
        size.width * 0.4612347,
        size.height * 1.025367,
        size.width * 0.3068293,
        size.height * 0.8854150,
        size.width * 0.3985040,
        size.height * 0.7551133);
    path_0.cubicTo(
        size.width * 0.4901787,
        size.height * 0.6248116,
        size.width * 0.7759227,
        size.height * 0.6000850,
        size.width * 1.039808,
        size.height * 0.6291958);
    path_0.cubicTo(
        size.width * 1.303693,
        size.height * 0.6583079,
        size.width * 1.169661,
        size.height * 0.7472463,
        size.width * 1.420245,
        size.height * 0.9084310);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffF2F5FE).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9336853, size.height * 0.4838411);
    path_1.cubicTo(
        size.width * 0.8062213,
        size.height * 0.5173867,
        size.width * 0.7995280,
        size.height * 0.4147438,
        size.width * 0.8407280,
        size.height * 0.3720074);
    path_1.cubicTo(
        size.width * 0.8819307,
        size.height * 0.3292709,
        size.width * 0.9903493,
        size.height * 0.3100505,
        size.width * 1.082888,
        size.height * 0.3290776);
    path_1.cubicTo(
        size.width * 1.175427,
        size.height * 0.3481059,
        size.width * 1.217045,
        size.height * 0.3981761,
        size.width * 1.175843,
        size.height * 0.4409126);
    path_1.cubicTo(
        size.width * 1.134643,
        size.height * 0.4836490,
        size.width * 1.061149,
        size.height * 0.4502968,
        size.width * 0.9336853,
        size.height * 0.4838411);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff004BFE).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5360213, size.height * 0.3279926);
    path_2.cubicTo(
        size.width * 0.4297307,
        size.height * 0.5202500,
        size.width * -0.05211760,
        size.height * 0.3179433,
        size.width * -0.1632509,
        size.height * 0.1909126);
    path_2.cubicTo(
        size.width * -0.2743840,
        size.height * 0.06388153,
        size.width * -0.1414915,
        size.height * -0.08070357,
        size.width * 0.1335725,
        size.height * -0.1320271);
    path_2.cubicTo(
        size.width * 0.4086373,
        size.height * -0.1833510,
        size.width * 0.6333280,
        size.height * -0.09815542,
        size.width * 0.7546613,
        size.height * 0.01391355);
    path_2.cubicTo(
        size.width * 0.8759947,
        size.height * 0.1259828,
        size.width * 0.6423120,
        size.height * 0.1357340,
        size.width * 0.5360213,
        size.height * 0.3279926);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffD9E4FF).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.1146656, size.height * -0.1616034);
    path_3.cubicTo(
        size.width * 0.3691680,
        size.height * -0.3214729,
        size.width * 0.6518267,
        size.height * -0.05053682,
        size.width * 0.6518267,
        size.height * 0.08647044);
    path_3.cubicTo(
        size.width * 0.6518267,
        size.height * 0.2234778,
        size.width * 0.4113333,
        size.height * 0.3345443,
        size.width * 0.1146656,
        size.height * 0.3345443);
    path_3.cubicTo(
        size.width * -0.1820005,
        size.height * 0.3345443,
        size.width * -0.4224960,
        size.height * 0.2234778,
        size.width * -0.4224960,
        size.height * 0.08647044);
    path_3.cubicTo(
        size.width * -0.4224960,
        size.height * -0.05053682,
        size.width * -0.1398360,
        size.height * -0.001732943,
        size.width * 0.1146656,
        size.height * -0.1616034);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff004BFE).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
