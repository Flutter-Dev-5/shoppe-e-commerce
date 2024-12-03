import 'package:tf_ecommerce/SRC/exports.dart';

class DiscountTile extends StatelessWidget {
  final dynamic productImage;
  final dynamic productDiscount;
  final dynamic productActualPrice;
  final dynamic productDiscountPrice;
  final dynamic productDescription;
  const DiscountTile(
      {super.key,
      required this.productImage,
      required this.productActualPrice,
      required this.productDiscountPrice,
      required this.productDiscount,
      required this.productDescription});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Stack(
            children: [
              Container(
                width: size.width / 2,
                height: 110,
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 0,
                          color: theme.cardColor.withOpacity(0.1),
                          blurRadius: 8),
                    ]),
                padding: const EdgeInsets.all(4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: DisplayImage(
                    imageAddress: productImage,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 4, right: 5, top: 4, bottom: 4),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 30,
                    height: 20,
                    child: Container(
                      height: 18,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                            bottomLeft: Radius.circular(4)),
                        color: theme.indicatorColor,
                      ),
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: AppText(
                          text: "$productDiscount % ",
                          style: theme.textTheme.titleSmall!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 35,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: AppText(
              maxLines: 2,
              text: productDescription,
              style: theme.textTheme.titleSmall!.copyWith(
                fontSize: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: size.width < 330
              ? AppText(
                  text: "\$$productDiscountPrice",
                  style: theme.textTheme.titleMedium,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      text: "\$$productDiscountPrice",
                      style: theme.textTheme.titleMedium,
                    ),
                    5.x,
                    AppText(
                      text: "\$$productActualPrice",
                      style: theme.textTheme.titleMedium!.copyWith(
                        color: theme.indicatorColor,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: theme.indicatorColor,
                      ),
                    ),
                  ],
                ),
        )
      ],
    );
  }
}
