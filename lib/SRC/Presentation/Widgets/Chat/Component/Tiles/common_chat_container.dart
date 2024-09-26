import 'package:tf_ecommerce/SRC/Data/ToReceievedOrderData/to_received_order_data.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyOrders/ToReceive/Component/order_list_container.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class CommonChatContainer extends StatelessWidget {
  final dynamic text;
  final bool isChatBot;
  const CommonChatContainer(
      {super.key, required this.isChatBot, required this.text});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return text is String
        ? isChatBot
            ? Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    width: size.width / 1.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: theme.primaryColorDark.withOpacity(0.1),
                    ),
                    child: AppText(
                      text: text,
                      maxLines: 20,
                      style: theme.textTheme.titleSmall!.copyWith(fontSize: 12),
                    ),
                  ),
                ),
              )
            : Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: theme.primaryColorDark,
                          ),
                          child: AppText(
                            text: text,
                            maxLines: 20,
                            style: theme.textTheme.titleSmall!.copyWith(
                                fontSize: 12,
                                color: theme.scaffoldBackgroundColor),
                          ),
                        ),
                      ),
                      5.w,
                      const SizedBox(
                        width: 50,
                        height: 50,
                        child: ProfileImage(
                          image: profileImage,
                        ),
                      ),
                    ],
                  ),
                ))
        : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: theme.primaryColorDark)),
                      width: 280,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OrderListContainerToReceived(
                              orderedItemListOfTrack: ToReceivedOrderData
                                  .ordersDetailsList[0].imageList),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      text:
                                          "Order #${ToReceivedOrderData.ordersDetailsList[0].orderNumber}",
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                    ),
                                    AppText(
                                      text: ToReceivedOrderData
                                          .ordersDetailsList[0].deliveryType,
                                      style: theme.textTheme.labelSmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                    ),
                                    10.h,
                                    ToReceivedOrderData.ordersDetailsList[0]
                                                .statusOfOrder ==
                                            AppStrings.delivered
                                        ? Row(
                                            children: [
                                              AppText(
                                                text: ToReceivedOrderData
                                                    .ordersDetailsList[0]
                                                    .statusOfOrder,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                              const SelectedMarkContainer(
                                                  width: 20,
                                                  height: 20,
                                                  iconSize: 18),
                                            ],
                                          )
                                        : AppText(
                                            text: ToReceivedOrderData
                                                .ordersDetailsList[0]
                                                .statusOfOrder,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: theme.cardColor.withOpacity(0.1),
                                ),
                                child: Center(
                                  child: AppText(
                                    text:
                                        "${ToReceivedOrderData.ordersDetailsList[0].numberOfItems.toString()} items",
                                    style: theme.textTheme.labelMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    10.h,
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
                height: 50,
                child: ProfileImage(
                  image: profileImage,
                ),
              ),
            ],
          );
  }
}
