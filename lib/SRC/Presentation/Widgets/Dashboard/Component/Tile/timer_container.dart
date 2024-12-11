import 'package:tf_ecommerce/SRC/exports.dart';

class TimerContainer extends StatelessWidget {
  final String? time;
  const TimerContainer({super.key, this.time});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: theme.canvasColor,
      ),
      child: Center(
        child: AppText(
          text: time ?? "",
          style: theme.textTheme.titleMedium,
        ),
      ),
    );
  }
}
