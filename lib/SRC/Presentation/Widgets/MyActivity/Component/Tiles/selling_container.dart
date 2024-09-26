import 'package:tf_ecommerce/SRC/exports.dart';

class SellingContainer extends StatelessWidget {
  final Color color;
  final String text;
  const SellingContainer({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: AppText(
        text: text,
        style: theme.textTheme.bodyMedium!
            .copyWith(color: theme.scaffoldBackgroundColor),
      ),
    );
  }
}
