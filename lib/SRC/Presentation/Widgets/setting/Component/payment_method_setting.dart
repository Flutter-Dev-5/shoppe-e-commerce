import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/select_payment_method.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class PaymentMethodSetting extends StatelessWidget {
  const PaymentMethodSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(
                left: 15, right: 20, top: 20.0, bottom: 30),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: false,
                  floating: true,
                  snap: true,
                  stretch: false,
                  leadingWidth: size.width,
                  collapsedHeight: 60,
                  expandedHeight: 60,
                  toolbarHeight: 60,
                  backgroundColor: theme.scaffoldBackgroundColor,
                  surfaceTintColor: Colors.transparent,
                  leading: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: AppStrings.setting,
                        style: theme.textTheme.displayMedium,
                      ),
                      10.h,
                      AppText(
                        text: AppStrings.paymentMethod,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.h,
                      SizedBox(height: 200, child: SelectPaymentMethodCard()),
                    ],
                  ),
                ),
                SliverAnimatedList(
                    initialItemCount: 8,
                    itemBuilder: (context, index, animation) {
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: theme.primaryColorDark.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const DisplayImage(
                                        imageAddress: cart2,
                                        imageHeight: 25,
                                        imageWidth: 25,
                                      ),
                                      10.w,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AppText(
                                            text: "April,20 2022 12:21",
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          5.h,
                                          AppText(
                                            text:
                                                "${AppStrings.ordered} #75938573984",
                                            style: theme.textTheme.labelMedium!
                                                .copyWith(fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  AppText(
                                    text: "-\$45747",
                                    style: theme.textTheme.labelMedium!
                                        .copyWith(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                          10.h,
                        ],
                      );
                    })
              ],
            )),
      ),
    );
  }
}
