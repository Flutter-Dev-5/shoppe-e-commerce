import 'package:tf_ecommerce/SRC/exports.dart';

class AboutSladaApp extends StatelessWidget {
  const AboutSladaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: AppStrings.slada,
            style: theme.textTheme.titleMedium,
          ),
          5.h,
          AppText(
            text: "${AppStrings.version} 1.0 April 2020",
            style: theme.textTheme.titleSmall!
                .copyWith(fontSize: 12, fontWeight: FontWeight.w300),
          ),
          20.h,
        ],
      ),
    );
  }
}
