import 'package:tf_ecommerce/SRC/exports.dart';

class FlashSaleHeading extends StatelessWidget {
  final bool isShop;
  final bool isDetailScreen;
  const FlashSaleHeading(
      {super.key, this.isShop = false, this.isDetailScreen = false});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isDetailScreen
            ? SizedBox(
                height: 55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: AppStrings.flashSale,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    2.h,
                    AppText(
                      text: AppStrings.chooseYourDiscount,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 14),
                    ),
                  ],
                ),
              )
            : AppText(
                text: AppStrings.flashSale,
                style: Theme.of(context).textTheme.displayMedium,
              ),
        isShop
            ? Row(
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
                      color: theme.canvasColor,
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
                      color: theme.canvasColor,
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
                      color: theme.canvasColor,
                    ),
                    child: Center(
                      child: AppText(
                        text: "58",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                ],
              )
            : isDetailScreen
                ? Row(
                    children: [
                      Icon(
                        Icons.alarm_sharp,
                        color: theme.scaffoldBackgroundColor,
                      ),
                      5.w,
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: theme.scaffoldBackgroundColor,
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
                          color: theme.scaffoldBackgroundColor,
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
                          color: theme.scaffoldBackgroundColor,
                        ),
                        child: Center(
                          child: AppText(
                            text: "58",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
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
                  ),
      ],
    );
  }
}
