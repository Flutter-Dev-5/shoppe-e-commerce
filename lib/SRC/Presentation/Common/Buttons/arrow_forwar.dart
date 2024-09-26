import 'package:tf_ecommerce/SRC/exports.dart';

class ArrowForward extends StatelessWidget {
  final VoidCallback onTap;
  final Color? color;
  const ArrowForward({
    super.key,
    required this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    print(color);
    return IconButton(
      onPressed: onTap,
      icon: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
        size: 17,
      ),
      splashRadius: 1,
      padding: const EdgeInsets.all(6),
      constraints: const BoxConstraints(maxHeight: 35, maxWidth: 35),
      style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(const Size(28, 28)),
          backgroundColor: WidgetStateProperty.all(
              color ?? Theme.of(context).primaryColorDark)),
      color: color ?? Theme.of(context).primaryColorDark,
    );
  }
}
