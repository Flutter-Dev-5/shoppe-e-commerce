import 'package:tf_ecommerce/SRC/exports.dart';

class DeliveryOfProductDetail extends StatelessWidget {
  const DeliveryOfProductDetail({super.key});

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
            text: AppStrings.delivery,
            style: theme.textTheme.displayMedium,
          ),
          10.h,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: theme.primaryColorDark,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      AppText(
                        text: AppStrings.standard,
                        style: theme.textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        height: 26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: theme.primaryColorDark.withOpacity(0.1),
                        ),
                        child: Center(
                          child: AppText(
                            text: "5-7 days",
                            style: theme.textTheme.titleSmall!.copyWith(
                                fontSize: 12, color: theme.primaryColorDark),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: AppText(
                    text: "\$${300}",
                    style: theme.textTheme.displaySmall,
                  ),
                )
              ],
            ),
          ),
          10.h,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: theme.primaryColorDark,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        text: AppStrings.express,
                        style: theme.textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        height: 26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: theme.primaryColorDark.withOpacity(0.1),
                        ),
                        child: Center(
                          child: AppText(
                            text: "1-2 days",
                            style: theme.textTheme.titleSmall!.copyWith(
                                fontSize: 12, color: theme.primaryColorDark),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: AppText(
                    text: "\$${1200}",
                    style: theme.textTheme.displaySmall,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
