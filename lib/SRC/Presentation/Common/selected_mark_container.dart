import 'package:tf_ecommerce/SRC/exports.dart';

class SelectedMarkContainer extends StatelessWidget {
  final double width;
  final double height;
  final double iconSize;
  const SelectedMarkContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor, shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: theme.primaryColorDark,
          ),
          child: Center(
            child: Icon(
              Icons.done,
              size: iconSize,
              color: theme.scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
