import 'package:tf_ecommerce/SRC/exports.dart';

class CategoryButton extends StatelessWidget {
  final bool isSelected;
  final String text;
  final VoidCallback onPressed;
  const CategoryButton(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: isSelected ? Border.all(color: theme.primaryColorDark) : null,
          color: isSelected
              ? theme.primaryColorDark.withOpacity(0.15)
              : theme.canvasColor,
        ),
        child: Center(
          child: AppText(
            text: text,
            style: theme.textTheme.labelSmall!.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
