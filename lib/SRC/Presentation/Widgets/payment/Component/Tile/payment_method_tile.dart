import 'package:tf_ecommerce/SRC/Presentation/DialougBox/payment_error_dialog.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/payment/component/Tile/select_card_tile.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class PaymentMethodTile extends StatelessWidget {
  const PaymentMethodTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: AppText(
                text: AppStrings.paymentMethod,
                style: theme.textTheme.labelMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            5.w,
            EditButton(onTap: () {
              CustomNewBottomSheet.customBottomSheet(SelectCardTile(),
                  AppStrings.paymentMethod, context, 0.4, true);
            }),
          ],
        ),
        10.h,
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              barrierColor: Colors.black.withOpacity(0.8),
              builder: (context) {
                return PaymentErrorDialog(
                  onConfirm: () {},
                  onCancel: () {},
                );
              },
            );
          },
          child: Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: theme.primaryColorDark.withOpacity(0.2)),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
                child: AppText(
              text: AppStrings.card,
              style: theme.textTheme.labelMedium!
                  .copyWith(color: theme.primaryColorDark),
            )),
          ),
        ),
      ],
    );
  }
}
