import 'package:tf_ecommerce/SRC/exports.dart';

class SmallButton extends StatelessWidget {
  VoidCallback onTap;
  bool? isSelected;
  String text;
  SmallButton(
      {super.key,
      required this.onTap,
      this.isSelected = false,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Container(
          height: 49,
          width: 161,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isSelected == true
                ? Theme.of(context).primaryColorDark
                : Theme.of(context).primaryColor,
          ),
          child: Center(
            child: AppText(
              text: text,
              style: isSelected == true
                  ? Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: LightColors().commonButtonColor)
                  : Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }
}
