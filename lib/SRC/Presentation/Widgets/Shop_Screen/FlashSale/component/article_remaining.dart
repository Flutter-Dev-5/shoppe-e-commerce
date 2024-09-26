import 'package:tf_ecommerce/SRC/exports.dart';

class ArticleRemaining extends StatelessWidget {
  const ArticleRemaining({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Card(
        color: theme.scaffoldBackgroundColor,
        child: Column(
          children: [
            AppText(
              text: AppStrings.articleRemaining,
              style: theme.textTheme.labelSmall!
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            5.h,
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: DisplayImage(
                imageAddress: b1,
                fit: BoxFit.fitWidth,
                imageWidth: size.width,
                imageHeight: 140,
              ),
            )
          ],
        ),
      ),
    );
  }
}
