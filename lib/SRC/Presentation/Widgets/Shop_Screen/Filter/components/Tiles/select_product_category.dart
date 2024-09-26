import 'package:tf_ecommerce/SRC/exports.dart';

class SelectProductCategory extends StatelessWidget {
  final String text;
  final bool isSelected;
  const SelectProductCategory(
      {super.key, required this.isSelected, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return isSelected
        ? Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: theme.primaryColorDark.withOpacity(0.1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                AppText(
                  text: text,
                  style: theme.textTheme.bodySmall!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SelectedMarkContainer(
                  width: 15,
                  height: 30,
                  iconSize: 10,
                ),
              ],
            ),
          )
        : Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: theme.canvasColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                AppText(
                  text: text,
                  style: theme.textTheme.labelMedium!
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 13),
                ),
                Container(),
              ],
            ),
          );
  }
}
