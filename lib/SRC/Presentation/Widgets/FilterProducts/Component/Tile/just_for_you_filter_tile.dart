import 'package:tf_ecommerce/SRC/exports.dart';

class JustForYouTileFilter extends StatelessWidget {
  const JustForYouTileFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 5),
        child: Row(
          children: [
            Image.asset(
              image22,
              width: 60,
              height: 50,
              fit: BoxFit.fill,
            ),
            15.x,
            Row(
              children: [
                AppText(
                  text: AppStrings.justForYou,
                  style: theme.textTheme.titleMedium,
                ),
                5.x,
                Icon(
                  Icons.star,
                  color: theme.primaryColorDark,
                  size: 15,
                )
              ],
            ),
            const Expanded(child: SizedBox()),
            ArrowForward(onTap: () {}),
          ],
        ),
      ),
    );
  }
}
