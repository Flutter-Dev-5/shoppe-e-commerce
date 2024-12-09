import 'package:tf_ecommerce/SRC/Data/ProductData/PaymentVoucherData/voucherData.dart';
import 'package:tf_ecommerce/SRC/Presentation/Common/Buttons/outline_border_button.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/Voucher/Component/Tile/voucher_tile.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SelectedItemOfPaymentDetails extends StatelessWidget {
  const SelectedItemOfPaymentDetails({super.key});

  final itemCount = 2;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        5.y,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AppText(
                  text: AppStrings.items,
                  style: theme.textTheme.displayMedium,
                ),
                10.x,
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.primaryColorDark.withOpacity(0.1),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: AppText(
                      text: "2",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
              child: OutlineBorderButton(
                text: AppStrings.addVoucher,
                onTap: () {
                  CustomNewBottomSheet.customBottomSheet(
                      Expanded(
                        child: ListView.builder(
                            itemCount: VoucherData.voucherData.length,
                            itemBuilder: (context, index) {
                              return VoucherTile(
                                voucherValidDate:
                                    VoucherData.voucherData[index].validityDate,
                                voucherImage:
                                    VoucherData.voucherData[index].imagePath,
                                voucherTitle:
                                    VoucherData.voucherData[index].voucherName,
                                voucherDiscount: VoucherData
                                    .voucherData[index].voucherDiscount,
                                buttonText: AppStrings.apply,
                              );
                            }),
                      ),
                      AppStrings.activeVouchers,
                      context,
                      0.5,
                      true);
                },
                fontSize: 14,
                borderRadius: 1,
              ),
            ),
          ],
        ),
        5.y,
        SizedBox(
          height: itemCount > 2 ? 200 : 140,
          child: ListView.builder(
              itemCount: itemCount,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        const SizedBox(
                            height: 60,
                            child: SmallCircularImage(imagePath: AppAssets.b4)),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: theme.scaffoldBackgroundColor,
                              ),
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: theme.shadowColor,
                                ),
                                padding: const EdgeInsets.all(6),
                                child: Center(
                                  child: AppText(
                                    text: "1",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                    5.x,
                    Flexible(
                      flex: 3,
                      child: AppText(
                        text: AppStrings.dummy,
                        style: theme.textTheme.titleSmall,
                        maxLines: 2,
                      ),
                    ),
                    Flexible(child: Container()),
                    Flexible(
                        child: AppText(
                      text: "\$1700",
                      style: theme.textTheme.titleMedium,
                    ))
                  ],
                );
              }),
        )
      ],
    );
  }
}
