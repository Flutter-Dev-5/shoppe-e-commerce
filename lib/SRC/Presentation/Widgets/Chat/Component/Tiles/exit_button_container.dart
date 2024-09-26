import 'package:tf_ecommerce/SRC/exports.dart';

class ExitButtonContainer extends StatelessWidget {
  final VoidCallback onTap;
  const ExitButtonContainer({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: theme.primaryColorDark,
        ),
        padding: const EdgeInsets.all(4),
        child: Icon(
          Icons.close,
          color: theme.scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
