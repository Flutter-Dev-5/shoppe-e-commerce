import 'package:tf_ecommerce/SRC/exports.dart';

class TimeRemainingContainer extends StatelessWidget {
  const TimeRemainingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(
          Icons.alarm_sharp,
          color: theme.primaryColorDark,
        ),
        5.w,
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: theme.unselectedWidgetColor,
          ),
          child: Center(
            child: AppText(
              text: "00",
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
        2.w,
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: theme.unselectedWidgetColor,
          ),
          child: Center(
            child: AppText(
              text: "36",
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
        2.w,
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: theme.unselectedWidgetColor,
          ),
          child: Center(
            child: AppText(
              text: "58",
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
      ],
    );
  }
}
