import 'package:tf_ecommerce/SRC/exports.dart';

class SizeProductContainer extends StatelessWidget {
  final int index;
  final ValueNotifier<int?> selectedIndexNotifier;
  final dynamic text;

  const SizeProductContainer({
    super.key,
    required this.index,
    required this.text,
    required this.selectedIndexNotifier,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ValueListenableBuilder<int?>(
      valueListenable: selectedIndexNotifier,
      builder: (context, selectedIndex, child) {
        bool isSelected = selectedIndex == index;

        return InkWell(
          onTap: () {
            selectedIndexNotifier.value = index;
          },
          child: isSelected
              ? Container(
                  decoration: BoxDecoration(
                      color: theme.primaryColorDark.withOpacity(0.15),
                      border: Border.all(color: theme.primaryColorDark),
                      borderRadius: BorderRadius.circular(5)),
                  height: 25,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 3),
                    child: AppText(
                      text: text,
                      style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 12, color: theme.primaryColorDark),
                    ),
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                      color: theme.indicatorColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5)),
                  height: 25,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 3),
                    child: AppText(
                      text: text,
                      style: theme.textTheme.titleSmall!.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
