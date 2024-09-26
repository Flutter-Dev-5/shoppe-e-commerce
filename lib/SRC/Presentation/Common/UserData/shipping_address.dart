import 'package:tf_ecommerce/SRC/exports.dart';

class ShippingAddress extends StatelessWidget {
  final double padding;
  const ShippingAddress({super.key, this.padding = 50});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(top: padding),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: theme.canvasColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 18.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: AppStrings.shippingAddress,
                  style: theme.textTheme.labelMedium,
                ),
                5.h,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: AppStrings.address,
                          style: theme.textTheme.titleSmall!.copyWith(
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    )),
                    10.w,
                    EditButton(onTap: () {
                      CustomNewBottomSheet.customBottomSheet(EditAddressTile(),
                          AppStrings.shippingAddress, context, 0.7, false);
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
