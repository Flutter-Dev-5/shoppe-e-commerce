import 'package:tf_ecommerce/SRC/exports.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? isPassword;
  final bool? isPasswordShown;
  final VoidCallback? onTap;
  final bool isNewPassword;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.onTap,
    this.isPassword = false,
    this.isPasswordShown = false,
    this.isNewPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      style: theme.textTheme.labelSmall,
      controller: controller,
      obscureText: isPasswordShown ?? false,
      obscuringCharacter: "*",
      textAlign: isNewPassword ? TextAlign.center : TextAlign.start,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        filled: true,
        fillColor: Theme.of(context).canvasColor,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: isNewPassword
              ? const BorderRadius.all(
                  Radius.circular(10),
                )
              : const BorderRadius.all(
                  Radius.circular(50),
                ),
        ),
        suffixIcon: isPassword == true
            ? isPasswordShown == true
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off)
            : null,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
