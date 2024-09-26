import 'package:tf_ecommerce/SRC/exports.dart';

class SpecificationOfDetailProduct extends StatelessWidget {
  const SpecificationOfDetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.h,
          AppText(
            text: AppStrings.specification,
            style: theme.textTheme.displayMedium,
          ),
          10.h,
          AppText(
            text: AppStrings.material,
            style: theme.textTheme.displaySmall,
          ),
          10.h,
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 25,
                decoration: BoxDecoration(
                    color: theme.indicatorColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: AppText(
                    text: "Cotton 95%",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              5.w,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 25,
                decoration: BoxDecoration(
                    color: theme.indicatorColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: AppText(
                    text: "Nylon 5%",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
            ],
          ),
          10.h,
          AppText(
            text: AppStrings.origin,
            style: theme.textTheme.displaySmall,
          ),
          5.h,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: theme.shadowColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: AppText(
                text: "EU",
                style: theme.textTheme.titleSmall!.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          10.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: AppStrings.sizeGuide,
                style: theme.textTheme.displaySmall,
              ),
              ArrowForward(onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
