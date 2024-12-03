import 'package:tf_ecommerce/SRC/exports.dart';

class MyActivityCircularContainer extends StatelessWidget {
  final dynamic countValue;
  final String text;
  const MyActivityCircularContainer(
      {super.key, required this.text, required this.countValue});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                spreadRadius: 0,
                color: Theme.of(context).cardColor.withOpacity(0.1),
                blurRadius: 8),
          ], shape: BoxShape.circle, color: theme.scaffoldBackgroundColor),
          child: Container(
            decoration: BoxDecoration(
                color: theme.primaryColorDark, shape: BoxShape.circle),
            child: Center(
              child: AppText(
                text: countValue.toString(),
                style: theme.textTheme.displayMedium!.copyWith(
                    color: theme.scaffoldBackgroundColor,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        10.y,
        AppText(
          text: text,
          style: theme.textTheme.titleSmall!
              .copyWith(fontWeight: FontWeight.w500, fontSize: 12),
        )
      ],
    );
  }
}
