import 'package:tf_ecommerce/SRC/exports.dart';

class MyActivityNextButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const MyActivityNextButton(
      {super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 30,
      height: 30,
      child: IconButton(
          color: theme.canvasColor,
          style: IconButton.styleFrom(backgroundColor: theme.canvasColor),
          onPressed: onTap,
          icon: Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Icon(
              icon,
              color: theme.primaryColorDark,
              size: 15,
            ),
          )),
    );
  }
}
