import 'package:tf_ecommerce/SRC/Presentation/Widgets/Shop_Screen/FlashSale/component/article_remaining.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/Shop_Screen/FlashSale/component/discount.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/Shop_Screen/FlashSale/component/sale_percentage.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class FlashSaleDetail extends StatefulWidget {
  final bool isDiscountAvailable;

  const FlashSaleDetail({super.key, this.isDiscountAvailable = false});

  @override
  _FlashSaleDetailState createState() => _FlashSaleDetailState();
}

class _FlashSaleDetailState extends State<FlashSaleDetail> {
  final ValueNotifier<double> _scrollOffset = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);

    return Stack(
      children: [
        const Bubble(),
        NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification is ScrollUpdateNotification) {
              _scrollOffset.value = scrollNotification.metrics.pixels;
            }
            return true;
          },
          child: CustomScrollView(
            slivers: [
              ValueListenableBuilder<double>(
                valueListenable: _scrollOffset,
                builder: (context, offset, child) {
                  double opacity = (offset / 200).clamp(0, 1);
                  return SliverAppBar(
                    pinned: false,
                    floating: true,
                    snap: true,
                    stretch: false,
                    leadingWidth: size.width,
                    collapsedHeight: 120,
                    toolbarHeight: 120,
                    expandedHeight: (size.width > 1200)
                        ? 400
                        : (size.width > 900)
                            ? 350
                            : (size.width > 600)
                                ? 300
                                : 230,
                    backgroundColor:
                        theme.scaffoldBackgroundColor.withOpacity(opacity),
                    surfaceTintColor: Colors.transparent,
                    leading: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          60.h,
                          const FlashSaleHeading(
                            isDetailScreen: true,
                          ),
                        ],
                      ),
                    ),
                    flexibleSpace: const FlexibleSpaceBar(
                      background: DiscountSelectorWidget(),
                    ),
                  );
                },
              ),
              widget.isDiscountAvailable
                  ? const SliverToBoxAdapter(
                      child: ArticleRemaining(),
                    )
                  : const SliverToBoxAdapter(),
              const SliverToBoxAdapter(
                child: Discount(),
              ),
              const SliverToBoxAdapter(
                child: FlashSaleMostPopular(),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _scrollOffset.dispose();
    super.dispose();
  }
}
