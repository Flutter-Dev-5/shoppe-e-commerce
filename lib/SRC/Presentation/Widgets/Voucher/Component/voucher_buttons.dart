import 'package:tf_ecommerce/SRC/exports.dart';

class VoucherButtons extends StatelessWidget {
  final ValueNotifier<int> isSelected;
  final int buttonIndex;
  final String label;
  final Function(int) onButtonSelected;

  const VoucherButtons({
    super.key,
    required this.isSelected,
    required this.buttonIndex,
    required this.label,
    required this.onButtonSelected,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ValueListenableBuilder(
        valueListenable: isSelected,
        builder: (context, index, child) {
          return InkWell(
            onTap: () {
              onButtonSelected(buttonIndex);
              isSelected.value = buttonIndex;
            },
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isSelected.value == buttonIndex
                    ? theme.primaryColorDark.withOpacity(0.2)
                    : theme.canvasColor,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Center(
                child: Text(
                  label, // Pass the label dynamically
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: isSelected.value == buttonIndex
                        ? theme.primaryColorDark
                        : theme.primaryColorLight,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
