import 'package:tf_ecommerce/SRC/Presentation/Widgets/Dashboard/Component/Tile/announcement/reward_announcement.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return _new(context, theme);
  }

  _new(BuildContext context, ThemeData theme) {
    final width = MediaQuery.sizeOf(context).width;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: false,
          floating: true,
          snap: true,
          stretch: false,
          leadingWidth: width,
          collapsedHeight: 70,
          expandedHeight: 220,
          toolbarHeight: 70,
          backgroundColor: theme.scaffoldBackgroundColor,
          surfaceTintColor: Colors.transparent,
          leading: const CustomAppBar(
            isHomePage: true,
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  35.y,
                  AppText(
                    text: AppStrings.hello,
                    style: theme.textTheme.displayLarge,
                  ),
                  20.y,
                  const RewardAnnouncement(),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: RecentlyView(
            itemList: CircularListData.circularData,
          ),
        ),
        const SliverToBoxAdapter(
          child: MyOrders(),
        ),
        const SliverToBoxAdapter(
          child: Stories(),
        ),
        SliverToBoxAdapter(
          child: NewItems(
            productList: NewItemsData.newItem,
          ),
        ),
        const SliverToBoxAdapter(
          child: HomePageMostPopular(),
        ),
        SliverToBoxAdapter(
          child: CategoriesGridHome(
            categories: CategoryDataHomeScreen.categories,
          ),
        ),
        const SliverToBoxAdapter(
          child: FlashSale(),
        ),
        SliverToBoxAdapter(
          child: TopProducts(
            itemList: TopProductData.topProduct,
          ),
        ),
        const SliverToBoxAdapter(
          child: JustForYou(),
        ),
      ],
    );
  }
}
