import 'package:tf_ecommerce/SRC/exports.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          text: AppStrings.filter,
          style: theme.textTheme.displayLarge,
        ),
        IconButton(
          onPressed: () {
            context.back();
          },
          icon: const Icon(
            Icons.close,
            size: 20,
          ),
        )
      ],
    );
  }
}
