import 'package:tf_ecommerce/SRC/Data/ProductData/DiscountProduct/product_data.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/Shop_Screen/FlashSale/Tiles/discount.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class Discount extends StatelessWidget {
  const Discount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 25, top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  AppText(
                    text: "20%",
                    style: theme.textTheme.displayMedium,
                  ),
                  5.x,
                  AppText(
                    text: AppStrings.discount,
                    style: theme.textTheme.displayMedium,
                  )
                ],
              ),
              InkWell(
                  onTap: () {
                    context.to(const FilterProduct());
                  },
                  child: const DisplayImage(imageAddress: AppAssets.filerIcon)),
            ],
          ),
          10.y,
          SizedBox(
            child: Column(
              children: [
                GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    primary: false,
                    itemCount: DiscountProductData.discountItem.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 220,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                    ),
                    itemBuilder: (context, index) {
                      return DiscountTile(
                          productImage: DiscountProductData
                              .discountItem[index].productImage,
                          productActualPrice: DiscountProductData
                              .discountItem[index].productActualPrice,
                          productDiscountPrice: DiscountProductData
                              .discountItem[index].productDiscountPrice,
                          productDiscount: DiscountProductData
                              .discountItem[index].productDiscount,
                          productDescription: DiscountProductData
                              .discountItem[index].productDescription);
                      // }
                    }),
                10.y,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
