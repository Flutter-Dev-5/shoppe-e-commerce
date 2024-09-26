import 'package:tf_ecommerce/SRC/exports.dart';

class EditButton extends StatelessWidget {
  final VoidCallback onTap;
  final double iconsSize;
  const EditButton({super.key, required this.onTap, this.iconsSize = 15});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
        splashRadius: 1,
        padding: const EdgeInsets.all(1),
        constraints: const BoxConstraints(maxHeight: 45, maxWidth: 45),
        style: ButtonStyle(
            fixedSize: WidgetStateProperty.all(const Size(25, 25)),
            backgroundColor:
                WidgetStateProperty.all(Theme.of(context).primaryColorDark)),
        onPressed: onTap,
        color: theme.scaffoldBackgroundColor,
        icon: Icon(
          Icons.edit,
          size: iconsSize,
        ));
  }
}
