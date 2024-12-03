import 'package:tf_ecommerce/SRC/exports.dart';

class Announcements extends StatelessWidget {
  const Announcements({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: theme.canvasColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: AppStrings.announcement,
              style: theme.textTheme.labelMedium,
            ),
            5.y,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: AppText(
                    text: AppStrings.dummy,
                    style: theme.textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                5.x,
                ArrowForward(onTap: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
