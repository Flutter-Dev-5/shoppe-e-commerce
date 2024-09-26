import 'package:tf_ecommerce/SRC/exports.dart';

class OutlineBorderButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double fontSize;
  final double borderRadius;
  final double outlinedRadius;
  const OutlineBorderButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fontSize = 21,
    this.borderRadius = 2,
    this.outlinedRadius = 15,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(outlinedRadius),
            border:
                Border.all(color: theme.primaryColorDark, width: borderRadius)),
        height: 50,
        child: Center(
          child: AppText(
            text: text,
            style: theme.textTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.w300,
                color: theme.primaryColorDark,
                fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
