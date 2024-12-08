import 'package:tf_ecommerce/SRC/Presentation/Widgets/Cart/component/Tiles/select_number_of_items.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class AddedToCartContainer extends StatelessWidget {
  const AddedToCartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 110,
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: Stack(
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
                        imageAddress: AppAssets.image31,
                        fit: BoxFit.fill,
                      ),
                    )),
                Positioned(
                  bottom: 5,
                  left: 10,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.scaffoldBackgroundColor),
                    child: const Center(
                      child: DisplayImage(imageAddress:AppAssets. deleteIconSVG),
                    ),
                  ),
                )
              ],
            ),
          ),
          8.x,
          Flexible(
            flex: 5,
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
                  4.y,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // padding: const EdgeInsets.symmetric(horizontal: 10),
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(5),
                        //     color: theme.primaryColorDark.withOpacity(0.1)),
                        child: AppText(
                          text: "Pink,",
                          style: theme.textTheme.titleSmall!.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      5.x,
                      Row(
                        children: [
                          Container(
                            // padding: const EdgeInsets.symmetric(horizontal: 15),
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(5),
                            //     color: theme.primaryColorDark.withOpacity(0.1)),
                            child: AppText(
                              text: "Size ",
                              style: theme.textTheme.titleSmall!.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            // padding: const EdgeInsets.symmetric(horizontal: 15),
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(5),
                            //     color: theme.primaryColorDark.withOpacity(0.1)),
                            child: AppText(
                              text: "M",
                              style: theme.textTheme.titleSmall!.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        text: "\$1700",
                        style: theme.textTheme.titleMedium,
                      ),
                      SelectNumberOfItems(),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
