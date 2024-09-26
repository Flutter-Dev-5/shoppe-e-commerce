import 'package:tf_ecommerce/SRC/exports.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool isRecoveryButton;
  final bool isLimitReached;
  final double fontSize;
  final double borderRadius;
  final Color color;
  const CommonButton({
    super.key,
    required this.onTap,
    required this.text,
    this.isRecoveryButton = false,
    this.isLimitReached = false,
    this.fontSize = 19,
    this.borderRadius = 15,
    this.color = const Color(0xff004CFF),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        height: isLimitReached ? 40 : 61,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: isRecoveryButton
              ? Theme.of(context).indicatorColor
              : isLimitReached
                  ? Theme.of(context).cardColor
                  : color,
        ),
        child: Center(
          child: AppText(
            text: text,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: fontSize,
                  color: color == theme.primaryColorDark
                      ? theme.scaffoldBackgroundColor
                      : theme.cardColor,
                ),
          ),
        ),
      ),
    );
  }
}
