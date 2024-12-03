import 'package:tf_ecommerce/SRC/exports.dart';

class SelectShippingOption extends StatelessWidget {
  SelectShippingOption({super.key});
  final ValueNotifier<int> isSelected = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ValueListenableBuilder(
        valueListenable: isSelected,
        builder: (context, index, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: AppStrings.shippingOptions,
                style: theme.textTheme.displayMedium,
              ),
              10.y,
              InkWell(
                onTap: () {
                  isSelected.value = 1;
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: index == 1
                        ? theme.primaryColorDark.withOpacity(0.1)
                        : theme.canvasColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index == 1
                          ? Flexible(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: theme.scaffoldBackgroundColor,
                                ),
                                padding: const EdgeInsets.all(1),
                                child: const SelectedMarkContainer(
                                  width: 23,
                                  height: 23,
                                  iconSize: 15,
                                ),
                              ))
                          : Container(
                              width: 23,
                              height: 23,
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: theme.scaffoldBackgroundColor,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: theme.cardColor.withOpacity(0.1),
                                ),
                              ),
                            ),
                      3.x,
                      Flexible(
                        flex: 5,
                        child: Row(
                          children: [
                            AppText(
                              text: AppStrings.standard,
                              style: theme.textTheme.titleMedium!
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                            4.x,
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              height: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: theme.primaryColorDark.withOpacity(0.05),
                              ),
                              child: Center(
                                child: AppText(
                                  text: "5-7 days",
                                  style: theme.textTheme.titleSmall!.copyWith(
                                      fontSize: 12,
                                      color: theme.primaryColorDark),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: AppText(
                          text: "FREE",
                          style: theme.textTheme.displaySmall,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              5.y,
              InkWell(
                onTap: () {
                  isSelected.value = 2;
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: index == 2
                        ? theme.primaryColorDark.withOpacity(0.1)
                        : theme.canvasColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index == 2
                          ? Flexible(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: theme.scaffoldBackgroundColor,
                                ),
                                padding: const EdgeInsets.all(1),
                                child: const SelectedMarkContainer(
                                  width: 23,
                                  height: 23,
                                  iconSize: 15,
                                ),
                              ))
                          : Container(
                              width: 23,
                              height: 23,
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: theme.scaffoldBackgroundColor,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: theme.cardColor.withOpacity(0.1),
                                ),
                              ),
                            ),
                      Flexible(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppText(
                              text: AppStrings.express,
                              style: theme.textTheme.titleMedium!
                                  .copyWith(fontWeight: FontWeight.normal),
                            ),
                            4.x,
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              height: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: theme.primaryColorDark.withOpacity(0.05),
                              ),
                              child: Center(
                                child: AppText(
                                  text: "1-2 days",
                                  style: theme.textTheme.titleSmall!.copyWith(
                                      fontSize: 12,
                                      color: theme.primaryColorDark),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: AppText(
                          text: "\$12,00",
                          style: theme.textTheme.displaySmall,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              5.y,
              const AppText(text: AppStrings.deliveryOnAndDate)
            ],
          );
        });
  }
}
