import 'package:tf_ecommerce/SRC/exports.dart';

class IsSelectedProduct extends StatelessWidget {
  final String label;
  final bool isSelected;

  const IsSelectedProduct(
      {super.key, required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return isSelected
        ? Card(
            color: theme.scaffoldBackgroundColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Center(
                child: AppText(
                  text: label,
                  style: theme.textTheme.labelMedium!.copyWith(
                    color: theme.primaryColorDark,
                  ),
                ),
              ),
            ))
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: AppText(
              text: label,
              style: theme.textTheme.labelMedium!.copyWith(
                  fontSize: 13, color: theme.primaryColorDark.withOpacity(0.5)),
            ));
  }
}
