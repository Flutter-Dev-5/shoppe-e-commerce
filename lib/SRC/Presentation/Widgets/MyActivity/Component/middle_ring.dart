import 'package:tf_ecommerce/SRC/exports.dart';

class MiddleRing extends StatelessWidget {
  final double width;
  const MiddleRing({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: width,
      width: width,
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          height: width * 0.3,
          width: width * 0.3,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              // Edge shadow
              BoxShadow(
                // offset: Offset(1.5, 1.5),
                color: theme.cardColor.withOpacity(0.2),
                spreadRadius: 2.0,
                // blurRadius: 0,
              ),

              // Circular shadow
              BoxShadow(
                offset: const Offset(1.5, 1.5),
                color: theme.scaffoldBackgroundColor,
                spreadRadius: 2.0,
                blurRadius: 4,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "Total",
                style: theme.textTheme.bodyMedium,
              ),
              10.y,
              AppText(
                text: "\$ 3650",
                style: theme.textTheme.displayMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
