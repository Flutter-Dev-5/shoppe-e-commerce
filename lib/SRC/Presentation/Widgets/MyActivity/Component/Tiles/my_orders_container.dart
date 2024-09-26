import 'package:tf_ecommerce/SRC/exports.dart';

class MyOrdersContainer extends StatelessWidget {
  final dynamic imageAddress;
  final dynamic descriptionText;
  final dynamic orderNumber;
  final dynamic dateOfBuying;
  final VoidCallback onTap;
  const MyOrdersContainer(
      {super.key,
      required this.onTap,
      required this.orderNumber,
      required this.imageAddress,
      required this.dateOfBuying,
      required this.descriptionText});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 119,
            width: 109,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                    spreadRadius: 0,
                    color: Theme.of(context).cardColor.withOpacity(0.1),
                    blurRadius: 8),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: DisplayImage(
                imageAddress: imageAddress,
              ),
            ),
          ),
          5.w,
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: descriptionText,
                  style: theme.textTheme.titleSmall!.copyWith(fontSize: 12),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                10.h,
                AppText(
                  text: "Order # $orderNumber",
                  style: theme.textTheme.labelMedium,
                ),
                20.h,
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: theme.canvasColor),
                      child: Center(
                        child: Text(
                          dateOfBuying,
                          style: theme.textTheme.titleSmall!
                              .copyWith(fontSize: 12),
                        ),
                      ),
                    ),
                    20.w,
                    InkWell(
                      onTap: onTap,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: theme.primaryColorDark, width: 2)),
                        child: AppText(
                          text: AppStrings.review,
                          style: theme.textTheme.titleSmall!.copyWith(
                              fontSize: 14, color: theme.primaryColorDark),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
