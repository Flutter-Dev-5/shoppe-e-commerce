import 'package:tf_ecommerce/SRC/exports.dart';

class HeadingRow extends StatelessWidget {
  final String firstText;
  final String nextText;
  final VoidCallback onTap;
  final double padding;
  const HeadingRow(
      {super.key,
      required this.firstText,
      required this.nextText,
      required this.onTap,
      this.padding = 20});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: firstText,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Row(
            children: [
              AppText(
                text: nextText,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              8.w,
              ArrowForward(onTap: onTap),
            ],
          )
        ],
      ),
    );
  }
}
