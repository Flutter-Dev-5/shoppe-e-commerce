import 'package:tf_ecommerce/SRC/exports.dart';

class VoucherTile extends StatelessWidget {
  final dynamic voucherValidDate;
  final dynamic voucherImage;
  final String voucherTitle;
  final dynamic voucherDiscount;
  final String buttonText;
  final bool isNearExpire;
  final dynamic leftDays;

  const VoucherTile({
    super.key,
    required this.voucherValidDate,
    required this.voucherImage,
    required this.voucherTitle,
    required this.voucherDiscount,
    required this.buttonText,
    this.isNearExpire = false,
    this.leftDays = 3,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          5.y,
          SizedBox(
              height: 110,
              width: double.infinity,
              child: VoucherContainer(
                isSelected: isNearExpire,
                containerWidget: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: AppStrings.vouchers,
                            style: theme.textTheme.titleMedium!.copyWith(
                                color: isNearExpire
                                    ? theme.indicatorColor.withOpacity(0.6)
                                    : theme.primaryColorDark,
                                fontWeight: FontWeight.w500),
                          ),
                          isNearExpire
                              ? Row(
                                  children: [
                                    AppText(
                                      text: "${leftDays} Days left",
                                      style:
                                          theme.textTheme.titleSmall!.copyWith(
                                        color: theme.indicatorColor
                                            .withOpacity(0.6),
                                      ),
                                    ),
                                    5.x,
                                    Container(
                                      height: 20,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: isNearExpire
                                            ? theme.indicatorColor
                                                .withOpacity(0.6)
                                            : theme.indicatorColor
                                                .withOpacity(0.1),
                                      ),
                                      child: Center(
                                        child: AppText(
                                          text: "valid until $voucherValidDate",
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : Container(
                                  height: 20,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: isNearExpire
                                        ? theme.indicatorColor
                                        : theme.indicatorColor.withOpacity(0.1),
                                  ),
                                  child: Center(
                                    child: AppText(
                                      text: "valid until $voucherValidDate",
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                )
                        ],
                      ),
                      5.y,
                      MySeparator(
                        color: isNearExpire
                            ? theme.indicatorColor.withOpacity(0.6)
                            : theme.primaryColorDark,
                      ),
                      5.y,
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    DisplayImage(
                                      imageAddress: voucherImage,
                                      imageWidth: 20,
                                      imageHeight: 20,
                                      color: const Color(0xff83B49D),
                                    ),
                                    5.x,
                                    AppText(
                                      text: voucherTitle,
                                      style: theme.textTheme.titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                    )
                                  ],
                                ),
                                AppText(
                                  text:
                                      "$voucherDiscount% off for your next Order",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ],
                            ),
                            CommonButton(
                              height: 35,
                              onTap: () {
                                context.back();
                              },
                              text: buttonText,
                              textSize: 14,
                              borderRadius: 8,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          10.y,
        ],
      ),
    );
  }
}
