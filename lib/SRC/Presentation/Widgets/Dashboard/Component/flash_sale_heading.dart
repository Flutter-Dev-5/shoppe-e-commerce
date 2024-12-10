import 'package:tf_ecommerce/SRC/Presentation/Widgets/Dashboard/Component/Tile/timer_container.dart';
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
                    2.y,
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
                  5.x,
                  const TimerContainer(
                    time: "00",
                  ),
                  2.x,
                  const TimerContainer(
                    time: "36",
                  ),
                  2.x,
                  const TimerContainer(
                    time: "58",
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
                      5.x,
                      const TimerContainer(
                        time: "00",
                      ),
                      2.x,
                      const TimerContainer(
                        time: "36",
                      ),
                      2.x,
                      const TimerContainer(
                        time: "58",
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Icon(
                        Icons.alarm_sharp,
                        color: theme.primaryColorDark,
                      ),
                      5.x,
                      const TimerContainer(
                        time: "00",
                      ),
                      2.x,
                      const TimerContainer(
                        time: "36",
                      ),
                      2.x,
                      const TimerContainer(
                        time: "58",
                      ),
                    ],
                  ),
      ],
    );
  }
}
