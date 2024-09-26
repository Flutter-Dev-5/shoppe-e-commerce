import 'package:tf_ecommerce/SRC/exports.dart';

class FilterHeader extends StatelessWidget {
  const FilterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          text: AppStrings.allCategory,
          style: theme.textTheme.displayLarge,
        ),
        IconButton(
            onPressed: () {
              context.back();
            },
            icon: const Icon(
              Icons.clear,
              size: 20,
            ))
      ],
    );
  }
}
