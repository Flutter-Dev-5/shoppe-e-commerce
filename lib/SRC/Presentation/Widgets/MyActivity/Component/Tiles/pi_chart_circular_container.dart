import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/Component/middle_ring.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/Component/progress_ring.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class PiChartCircularContainer extends StatelessWidget {
  const PiChartCircularContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 200.0,
        width: 200.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.withOpacity(0.8),
        ),
        child: Stack(
          children: <Widget>[
            const Center(
                child: MiddleRing(
              width: 400.0,
            )),
            Transform.rotate(
              angle: pi * 1,
              child: CustomPaint(
                painter: ProgressRings(
                  completedPercentage: 1.5,
                  circleWidth: 20.0,
                  gradient: greenGradient,
                  gradientStartAngle: 0.0,
                  gradientEndAngle: pi / 3,
                  progressStartAngle: 1.85,
                  lengthToRemove: 3,
                ),
                child: const Center(),
              ),
            ),
            Transform.rotate(
              angle: pi / 1.1,
              child: CustomPaint(
                painter: ProgressRings(
                  completedPercentage: 0.00,
                  circleWidth: 20.0,
                  gradient: turqoiseGradient,
                ),
                child: const Center(),
              ),
            ),
            Transform.rotate(
              angle: pi / 10,
              child: CustomPaint(
                painter: ProgressRings(
                  completedPercentage: 0.0,
                  circleWidth: 20.0,
                  gradient: [theme.primaryColorDark, theme.primaryColorDark],
                  gradientStartAngle: 0.0,
                  gradientEndAngle: pi / 2,
                  progressStartAngle: 1.85,
                ),
                child: const Center(),
              ),
            ),
            Transform.rotate(
              angle: pi * 0.9,
              child: CustomPaint(
                painter: ProgressRings(
                  completedPercentage: 0.0,
                  circleWidth: 20.0,
                  gradient: greenGradient,
                  gradientStartAngle: 0.0,
                  gradientEndAngle: pi / 2,
                  progressStartAngle: 1.85,
                ),
                child: const Center(),
              ),
            ),
            Transform.rotate(
              angle: pi * 1.8,
              child: CustomPaint(
                painter: ProgressRings(
                  completedPercentage: 0.0,
                  circleWidth: 20.0,
                  gradient: [theme.indicatorColor, theme.indicatorColor],
                  gradientStartAngle: 0.0,
                  gradientEndAngle: pi / 2,
                  progressStartAngle: 1.85,
                ),
                child: const Center(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const greenGradient = [Color(0xff9DEB44), Color.fromRGBO(129, 250, 112, 1)];
const turqoiseGradient = [
  Color(0xffFE7F00),
  Color(0xffFE7F00),
];

const orangeGradient = [
  Color.fromRGBO(251, 173, 86, 1),
  Color.fromRGBO(253, 255, 93, 1),
];
