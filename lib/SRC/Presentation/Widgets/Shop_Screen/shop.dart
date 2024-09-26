import 'package:tf_ecommerce/SRC/exports.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: false,
                floating: true,
                snap: true,
                stretch: false,
                leadingWidth: size.width,
                collapsedHeight: 70,
                expandedHeight: (size.width > 1200)
                    ? 400
                    : (size.width > 900)
                        ? 350
                        : (size.width > 600)
                            ? 300
                            : 230,
                toolbarHeight: 70,
                backgroundColor: theme.scaffoldBackgroundColor,
                surfaceTintColor: Colors.transparent,
                leading: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Flexible(child: ShopSearchBar()),
                ),
                flexibleSpace: const FlexibleSpaceBar(
                  background: ImageSliderScreen(),
                ),
              ),
              SliverToBoxAdapter(
                child: CategoriesGrid(
                  categories: CategoryData.categories,
                ),
              ),
              SliverToBoxAdapter(
                child: TopProducts(
                  itemList: ShopTopProductData.topProduct,
                ),
              ),
              SliverToBoxAdapter(
                child: NewItems(
                  productList: ShopNewItemsData.newItem,
                ),
              ),
              const SliverToBoxAdapter(
                child: ShopFlashSale(),
              ),
              const SliverToBoxAdapter(
                child: ShopMostPopular(),
              ),
              const SliverToBoxAdapter(
                child: ShopJustForYou(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
