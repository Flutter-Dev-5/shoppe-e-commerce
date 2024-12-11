import 'package:tf_ecommerce/SRC/Application/Utils/Extensions/responsive_extension.dart';
import 'package:tf_ecommerce/SRC/Data/ProductData/ProductDetail/you_might_like_data.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/FilterProducts/component/you_might_like_it.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/ProductDetail/component/Tile/product_description.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/ProductDetail/component/bottom_bar.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/ProductDetail/component/delivery.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/ProductDetail/component/product_detail_image_slider.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/ProductDetail/component/rating_and_reviews.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/ProductDetail/component/specification.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/ProductDetail/component/varients.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

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
          body: Column(
        children: [
          SizedBox(
            height: size.height - 90.h,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: false,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: SizedBox(
                      height: size.height / 2.1,
                      child: ProductDetailImageSlider(),
                    ),
                  ),
                  collapsedHeight: 80,
                  expandedHeight: size.height / 2.1,
                  // toolbarHeight: 80,
                  snap: true,
                  stretch: false,
                  backgroundColor: theme.scaffoldBackgroundColor,
                  surfaceTintColor: Colors.transparent,
                ),
                const SliverToBoxAdapter(
                  child: ProductDescription(
                    isSaleProduct: true,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: VarientOfProductDetail(),
                ),
                const SliverToBoxAdapter(
                  child: SpecificationOfDetailProduct(),
                ),
                const SliverToBoxAdapter(
                  child: DeliveryOfProductDetail(),
                ),
                const SliverToBoxAdapter(
                  child: RatingAndReviews(),
                ),
                SliverToBoxAdapter(
                  child: YouMightLikeIt(
                    productList: YouMightLikeItData.youMightLike,
                    text: AppStrings.youMightLikeIt,
                  ),
                ),
              ],
            ),
          ),
          const BottomBar(),
        ],
      )),
    );
  }
}
