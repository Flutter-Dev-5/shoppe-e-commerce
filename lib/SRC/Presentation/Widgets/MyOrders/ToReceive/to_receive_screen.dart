import 'package:tf_ecommerce/SRC/Data/ToReceievedOrderData/to_received_order_data.dart';
import 'package:tf_ecommerce/SRC/Presentation/Common/Buttons/outline_border_button.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyOrders/ToReceive/component/order_list_container.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyOrders/ToReceive/to_received_order_progress.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ToReceivedScreen extends StatelessWidget {
  const ToReceivedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            10.y,
            const CustomAppBar(
              isHomePage: false,
            ),
            15.y,
            Expanded(
              child: ListView.builder(
                  itemCount: ToReceivedOrderData.ordersDetailsList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OrderListContainerToReceived(
                              orderedItemListOfTrack: ToReceivedOrderData
                                  .ordersDetailsList[index].imageList),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        text:
                                            "Order #${ToReceivedOrderData.ordersDetailsList[index].orderNumber}",
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14),
                                      ),
                                      AppText(
                                        text: ToReceivedOrderData
                                            .ordersDetailsList[index]
                                            .deliveryType,
                                        style: theme.textTheme.labelSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                      ),
                                      10.y,
                                      ToReceivedOrderData
                                                  .ordersDetailsList[index]
                                                  .statusOfOrder ==
                                              AppStrings.delivered
                                          ? Row(
                                              children: [
                                                AppText(
                                                  text: ToReceivedOrderData
                                                      .ordersDetailsList[index]
                                                      .statusOfOrder,
                                                  style: theme
                                                      .textTheme.titleMedium,
                                                ),
                                                const SelectedMarkContainer(
                                                    width: 20,
                                                    height: 20,
                                                    iconSize: 18),
                                              ],
                                            )
                                          : AppText(
                                              text: ToReceivedOrderData
                                                  .ordersDetailsList[index]
                                                  .statusOfOrder,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.width * 0.2,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: theme.canvasColor,
                                      ),
                                      child: Center(
                                        child: AppText(
                                          text:
                                              "${ToReceivedOrderData.ordersDetailsList[index].numberOfItems.toString()} items",
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                        ),
                                      ),
                                    ),
                                    20.y,
                                    ToReceivedOrderData.ordersDetailsList[index]
                                                .statusOfOrder ==
                                            AppStrings.delivered
                                        ? SizedBox(
                                            height: 30,
                                            width: size.width * 0.21,
                                            child: OutlineBorderButton(
                                              outlinedRadius: 10,
                                              text: AppStrings.review,
                                              fontSize: 16,
                                              onTap: () {
                                                CustomNewBottomSheet
                                                    .customBottomSheet(
                                                  Flexible(
                                                      child: ListView.builder(
                                                          itemCount: 2,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return Row(
                                                              children: [
                                                                Card(
                                                                  color: theme
                                                                      .scaffoldBackgroundColor,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            4.0),
                                                                    child: ClipRRect(
                                                                        borderRadius: BorderRadius.circular(10),
                                                                        child: Image.asset(
                                                                          b1,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          height:
                                                                              100,
                                                                          width:
                                                                              100,
                                                                        )),
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            8.0,
                                                                        right:
                                                                            20),
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        AppText(
                                                                          text:
                                                                              AppStrings.dummy,
                                                                          style: theme
                                                                              .textTheme
                                                                              .titleSmall,
                                                                          maxLines:
                                                                              2,
                                                                        ),
                                                                        10.y,
                                                                        AppText(
                                                                          text:
                                                                              "Order #${ToReceivedOrderData.ordersDetailsList[index].orderNumber}",
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelMedium!
                                                                              .copyWith(fontWeight: FontWeight.w500, fontSize: 14),
                                                                        ),
                                                                        20.y,
                                                                        Row(
                                                                          children: [
                                                                            Container(
                                                                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(10),
                                                                                color: theme.canvasColor,
                                                                              ),
                                                                              child: Center(
                                                                                child: AppText(
                                                                                  text: "06/April",
                                                                                  style: theme.textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            10.x,
                                                                            SizedBox(
                                                                              height: 30,
                                                                              width: size.width * 0.2,
                                                                              child: OutlineBorderButton(
                                                                                outlinedRadius: 10,
                                                                                text: AppStrings.review,
                                                                                fontSize: 14,
                                                                                onTap: () {},
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            );
                                                          })),
                                                  AppStrings
                                                      .whichItemYouWantToReview,
                                                  context,
                                                  0.5,
                                                  true,
                                                );
                                              },
                                            ),
                                          )
                                        : SizedBox(
                                            height: 30,
                                            width: size.width * 0.2,
                                            child: CommonButton(
                                              onTap: () {
                                                context.to(
                                                    const ToReceivedOrderProgress());
                                              },
                                              text: AppStrings.track,
                                              borderRadius: 8,
                                              fontSize: 14,
                                            ))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
