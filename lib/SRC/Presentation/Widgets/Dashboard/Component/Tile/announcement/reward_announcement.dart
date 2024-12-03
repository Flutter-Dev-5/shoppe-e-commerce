import 'package:tf_ecommerce/SRC/Presentation/Widgets/Voucher/voucher.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class RewardAnnouncement extends StatelessWidget {
  const RewardAnnouncement({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        context.to(const Voucher());
      },
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: theme.scaffoldBackgroundColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: theme.primaryColorDark,
                        width: 1,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: DisplayImage(
                        imageAddress: favIconColoredSVG,
                        color: theme.primaryColorDark,
                      ),
                    ),
                  ),
                  const Positioned(
                      right: 0,
                      top: 0,
                      child: SelectedMarkContainer(
                          width: 20, height: 20, iconSize: 15))
                ],
              ),
              15.x,
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      text: AppStrings.youJustGotAReward,
                      style: theme.textTheme.labelMedium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    AppText(
                      text: AppStrings.dummy,
                      style: theme.textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
