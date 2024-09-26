import 'package:tf_ecommerce/SRC/exports.dart';

class ErrorContainerIcon extends StatelessWidget {
  final bool isDelete;
  const ErrorContainerIcon({super.key, this.isDelete = false});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isDelete
                ? theme.canvasColor
                : theme.indicatorColor.withOpacity(0.2)),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: theme.scaffoldBackgroundColor),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.indicatorColor.withOpacity(0.5),
                ),
                child: Center(
                  child: Text(
                    "!",
                    style: theme.textTheme.labelSmall!.copyWith(
                        color: theme.scaffoldBackgroundColor,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
