import 'package:tf_ecommerce/SRC/Presentation/Widgets/Cart/component/Tiles/added_to_cart_container.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class CartItems extends StatelessWidget {
  CartItems({super.key});
  final ValueNotifier<bool> isListEmpty = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Container(
      color: theme.scaffoldBackgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: SizedBox(
              height: size.height - 130,
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: false,
                    floating: true,
                    snap: true,
                    stretch: false,
                    toolbarHeight: 50,
                    expandedHeight: 150,
                    collapsedHeight: 50,
                    backgroundColor: theme.scaffoldBackgroundColor,
                    surfaceTintColor: Colors.transparent,
                    leadingWidth: size.width,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Column(
                        children: [
                          30.y,
                          const ShippingAddress(),
                        ],
                      ),
                    ),
                    leading: Row(
                      children: [
                        AppText(
                          text: AppStrings.cart,
                          style: theme.textTheme.displayLarge,
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
                  ),
                  ValueListenableBuilder(
                      valueListenable: isListEmpty,
                      builder: (context, isSelect, child) {
                        return isListEmpty.value
                            ? SliverToBoxAdapter(
                                child: SizedBox(
                                  height: size.height / 2.6,
                                  child: Container(
                                    margin: const EdgeInsets.all(50),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 6,
                                              color: theme.canvasColor)
                                        ]),
                                    child: Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: theme.scaffoldBackgroundColor,
                                      ),
                                      child: const Center(
                                        child: DisplayImage(
                                          imageAddress: cart2,
                                          imageHeight: 80,
                                          imageWidth: 80,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : SliverAnimatedList(
                                initialItemCount: 3,
                                itemBuilder: (context, index, child) {
                                  return Column(
                                    children: [
                                      10.y,
                                      const AddedToCartContainer(),
                                    ],
                                  );
                                });
                      }),
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.y,
                        AppText(
                          text: AppStrings.fromYourWishList,
                          style: theme.textTheme.displayMedium,
                        ),
                        20.y,
                      ],
                    ),
                  ),
                  SliverAnimatedList(
                      initialItemCount: 10,
                      itemBuilder: (context, index, child) {
                        return Column(
                          children: [
                            const WishListItemContainer(),
                            20.y,
                          ],
                        );
                      }),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: theme.canvasColor,
              width: size.width,
              height: 100,
              child: Row(
                children: [
                  Flexible(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          AppText(
                            text: AppStrings.total,
                            style: theme.textTheme.displayMedium,
                          ),
                          5.x,
                          AppText(
                            text: "\$1700",
                            style: theme.textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 6,
                      child: ValueListenableBuilder(
                          valueListenable: isListEmpty,
                          builder: (context, isSelected, child) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: SizedBox(
                                  height: 40,
                                  child: CommonButton(
                                      color: isListEmpty.value
                                          ? theme.scaffoldBackgroundColor
                                          : theme.primaryColorDark,
                                      fontSize: 16,
                                      onTap: () {
                                        isListEmpty.value = !isListEmpty.value;
                                      },
                                      text: AppStrings.checkOut)),
                            );
                          }))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
