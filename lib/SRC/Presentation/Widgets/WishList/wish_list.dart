import 'package:tf_ecommerce/SRC/Presentation/Widgets/WishList/component/recently_viewed.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    ValueNotifier<bool> isListEmpty = ValueNotifier(false);
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: isListEmpty,
              builder: (context, isEmpty, child) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        floating: true,
                        snap: true,
                        expandedHeight: 200,
                        stretch: false,
                        pinned: true,
                        leadingWidth: size.width,
                        collapsedHeight: 40,
                        toolbarHeight: 40,
                        backgroundColor: theme.scaffoldBackgroundColor,
                        surfaceTintColor: Colors.transparent,
                        leading: InkWell(
                          onTap: () {
                            isListEmpty.value = !isListEmpty.value;
                          },
                          child: AppText(
                            text: AppStrings.wishList,
                            style: theme.textTheme.displayLarge,
                          ),
                        ),
                        flexibleSpace: const FlexibleSpaceBar(
                          background: RecentlyViewedWishList(),
                        ),
                      ),
                      isListEmpty.value
                          ? SliverToBoxAdapter(
                              child: SizedBox(
                                height: size.height / 2.6,
                                child: const Center(
                                  child: DisplayImage(
                                      imageAddress: emptyWishListSVG),
                                ),
                              ),
                            )
                          : SliverAnimatedList(
                              initialItemCount: 10,
                              itemBuilder: (context, index, child) {
                                return Column(
                                  children: [
                                    const WishListItemContainer(),
                                    10.h,
                                  ],
                                );
                              }),
                      const SliverToBoxAdapter(
                        child: WishListMostPopular(),
                      )
                    ],
                  ),
                );
              })),
    );
  }
}
