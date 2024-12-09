import 'package:tf_ecommerce/SRC/Presentation/Common/time_remaining_container.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ProductDescription extends StatelessWidget {
  final bool isSaleProduct;
  const ProductDescription({super.key, required this.isSaleProduct});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          isSaleProduct
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: "\$ 17,00",
                          style: theme.textTheme.displayLarge!.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        5.y,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AppText(
                              text: "\$ 30,00",
                              style: theme.textTheme.displayLarge!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: theme.indicatorColor,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: theme.indicatorColor),
                            ),
                            5.x,
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                ),
                                color: theme.indicatorColor,
                              ),
                              child: AppText(
                                text: "-20%",
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(fontSize: 13),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const TimeRemainingContainer(),
                        5.x,
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: theme.indicatorColor.withOpacity(0.1),
                          ),
                          child: SvgPicture.asset(
                            AppAssets.shareIconSVG,
                            width: 13,
                            height: 13,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppText(text: "\$ 17,00}"),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.indicatorColor.withOpacity(0.1),
                      ),
                      child: SvgPicture.asset(
                        AppAssets.shareIconSVG,
                        width: 13,
                        height: 13,
                      ),
                    )
                  ],
                ),
          SizedBox(
              child: AppText(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.",
            style: theme.textTheme.bodyMedium,
            maxLines: 4,
          ))
        ],
      ),
    );
  }
}
