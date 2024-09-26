import 'package:tf_ecommerce/SRC/exports.dart';

class ProfileTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? isPassword;
  final bool? isPasswordShown;

  final VoidCallback? onTap;
  const ProfileTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.onTap,
    this.isPassword = false,
    this.isPasswordShown = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      style: theme.textTheme.labelSmall,
      controller: controller,
      obscureText: isPasswordShown ?? false,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        filled: true,
        fillColor: Theme.of(context).primaryColorDark.withOpacity(0.1),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
