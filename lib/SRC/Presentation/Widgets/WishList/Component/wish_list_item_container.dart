import 'package:tf_ecommerce/SRC/exports.dart';

class WishListItemContainer extends StatelessWidget {
  const WishListItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Stack(
          children: [
            Container(
                width: 121,
                height: 110,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        color: theme.cardColor.withOpacity(0.2),
                        blurRadius: 4,
                      ),
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const DisplayImage(
                    imageAddress: AppAssets.image32,
                    fit: BoxFit.fill,
                  ),
                )),
            Positioned(
              bottom: 5,
              left: 5,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.scaffoldBackgroundColor),
                child: const Center(
                  child: DisplayImage(imageAddress: AppAssets.deleteIconSVG),
                ),
              ),
            )
          ],
        ),
        10.x,
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: AppStrings.dummy,
                  style: theme.textTheme.titleSmall,
                  maxLines: 3,
                ),
                AppText(
                  text: "\$1700",
                  style: theme.textTheme.titleMedium,
                ),
                2.y,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: theme.primaryColorDark.withOpacity(0.1)),
                          child: AppText(
                            text: "Pink",
                            style: theme.textTheme.titleSmall!.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        5.x,
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: theme.primaryColorDark.withOpacity(0.1)),
                          child: AppText(
                            text: "M",
                            style: theme.textTheme.titleSmall!.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const DisplayImage(imageAddress: AppAssets.addIconSVG)
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
