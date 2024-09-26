import 'package:tf_ecommerce/SRC/exports.dart';

class SelectDayOfRecently extends StatelessWidget {
  final int index;
  final String text;
  final ValueNotifier<int> selectedIndex; // Accept selectedIndex as a parameter

  const SelectDayOfRecently({
    super.key,
    required this.text,
    required this.index,
    required this.selectedIndex, // Add required selectedIndex
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Flexible(
      child: ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, selected, _) {
          final isSelected = selected == index;
          return InkWell(
            onTap: () {
              selectedIndex.value = index;
            },
            child: Container(
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isSelected
                    ? theme.primaryColorDark.withOpacity(0.2)
                    : theme.canvasColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Center(
                    child: AppText(
                      text: text,
                      style: isSelected
                          ? theme.textTheme.bodyMedium!
                              .copyWith(color: theme.primaryColorDark)
                          : theme.textTheme.bodyMedium,
                    ),
                  ),
                  isSelected
                      ? const SelectedMarkContainer(
                          width: 20,
                          height: 20,
                          iconSize: 12,
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
