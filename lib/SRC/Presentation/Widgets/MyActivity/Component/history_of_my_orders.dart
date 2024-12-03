import 'package:tf_ecommerce/SRC/Data/ProductData/History/my_order_data.dart';
import 'package:tf_ecommerce/SRC/Presentation/DialougBox/custom_dialoug_box.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/component/Tiles/my_orders_container.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class HistoryOfMyOrders extends StatelessWidget {
  const HistoryOfMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    ValueNotifier<double> ratingValue = ValueNotifier(1);

    final theme = Theme.of(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              snap: true,
              stretch: false,
              leadingWidth: size.width,
              collapsedHeight: 70,
              expandedHeight: 120,
              toolbarHeight: 70,
              backgroundColor: theme.scaffoldBackgroundColor,
              surfaceTintColor: Colors.transparent,
              leading: const CustomAppBar(
                isMyActivity: true,
                isHomePage: false,
                text: AppStrings.history,
              ),
            ),
            SliverAnimatedList(
              initialItemCount: MyOrderData.history.length,
              itemBuilder: (BuildContext context, int index,
                  Animation<double> animation) {
                return Column(
                  children: [
                    MyOrdersContainer(
                      onTap: () {
                        CustomNewBottomSheet.customBottomSheet(
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 60,
                                        height: 60,
                                        child: ClipOval(
                                          child: DisplayImage(
                                              imageAddress: MyOrderData
                                                  .history[index].imageAddress),
                                        ),
                                      ),
                                      10.x,
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppText(
                                              text: AppStrings.dummyMessage,
                                              style: theme.textTheme.titleSmall,
                                              maxLines: 1,
                                            ),
                                            AppText(
                                              text:
                                                  "Order # ${MyOrderData.history[index].orderNumber}",
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  10.y,
                                  ValueListenableBuilder(
                                      valueListenable: ratingValue,
                                      builder: (context, rating, child) {
                                        return AnimatedRatingStars(
                                          initialRating: 0,
                                          minRating: 0.0,
                                          maxRating: 5.0,
                                          filledColor: theme.highlightColor,
                                          emptyColor: theme.highlightColor,
                                          filledIcon: Icons.star,
                                          halfFilledIcon: Icons.star_half,
                                          emptyIcon: Icons.star_border,
                                          onChanged: (double rating) {
                                            ratingValue.value = rating;
                                          },
                                          displayRatingValue: true,
                                          interactiveTooltips: true,
                                          customFilledIcon: Icons.star,
                                          customHalfFilledIcon: Icons.star_half,
                                          customEmptyIcon: Icons.star_border,
                                          starSize: 25.0,
                                          animationDuration:
                                              const Duration(milliseconds: 300),
                                          animationCurve: Curves.easeInOut,
                                          readOnly: false,
                                        );
                                      }),
                                  10.y,
                                  Container(
                                    height: 100,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: theme.primaryColorDark
                                            .withOpacity(0.1)),
                                    child: TextField(
                                      style: theme.textTheme.titleSmall,
                                      maxLines: 7,
                                      controller: TextEditingController(),
                                      decoration: InputDecoration(
                                          hintText: "Your Comment",
                                          hintStyle: theme.textTheme.titleSmall!
                                              .copyWith(
                                            fontSize: 12,
                                          ),
                                          border: const OutlineInputBorder(
                                              borderSide: BorderSide.none)),
                                    ),
                                  ),
                                  10.y,
                                  SizedBox(
                                    height: 40,
                                    child: CommonButton(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          barrierColor:
                                              Colors.black.withOpacity(0.8),
                                          builder: (context) {
                                            return CustomDialog(
                                              isRating: true,
                                              ratingValueOfProduct:
                                                  ratingValue.value,
                                              // isError: true,
                                              // content: AppStrings.reachedLimitOfPassword,
                                              onConfirm: () {
                                                context.back();
                                              },

                                              icon: profileImage,
                                            );
                                          },
                                        );
                                      },
                                      text: AppStrings.sayIt,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            AppStrings.review,
                            context,
                            0.5,
                            false);
                      },
                      orderNumber: MyOrderData.history[index].orderNumber,
                      imageAddress: MyOrderData.history[index].imageAddress,
                      dateOfBuying: MyOrderData.history[index].dateOfPurchase,
                      descriptionText:
                          MyOrderData.history[index].productDescription,
                    ),
                    10.y,
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
