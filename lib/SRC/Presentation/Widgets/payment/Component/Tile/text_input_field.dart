import 'package:tf_ecommerce/SRC/exports.dart';

class TextInputFieldOfPayment extends StatelessWidget {
  final String titleOfTextField;
  final String hintText;
  final TextEditingController controller;
  const TextInputFieldOfPayment(
      {super.key,
      required this.titleOfTextField,
      required this.hintText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: titleOfTextField,
          style: theme.textTheme.titleSmall!.copyWith(fontSize: 14),
        ),
        TextField(
          controller: controller,
          style: theme.textTheme.labelSmall,
          decoration: InputDecoration(
            filled: true,
            fillColor: theme.primaryColorDark.withOpacity(0.05),
            focusColor: theme.cardColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            hintText: hintText,
            hintStyle: theme.textTheme.labelMedium!.copyWith(
              color: theme.cardColor.withOpacity(0.2),
            ),
          ),
        ),
      ],
    );
  }
}
