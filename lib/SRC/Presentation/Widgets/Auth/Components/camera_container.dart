import 'package:tf_ecommerce/SRC/Presentation/Common/dotted_border.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class CameraContainer extends StatelessWidget {
  const CameraContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CircularDashedBorderPainter(
        color: Theme.of(context).primaryColorDark, // Color of the dashed border
        strokeWidth: 4, // Thickness of the dashes
        dashLength: 10, // Length of each dash
        dashSpacing: 10, // Spacing between each dash
      ),
      child: Container(
        height: 90, // Size of the circular border
        width: 90,
        color: Colors.transparent, // Background color, if needed

        child: Center(
          child: Icon(
            Icons.camera_alt_outlined,
            color: Theme.of(context).primaryColorDark,
            size: 34,
          ),
        ),
      ),
    );
  }
}
