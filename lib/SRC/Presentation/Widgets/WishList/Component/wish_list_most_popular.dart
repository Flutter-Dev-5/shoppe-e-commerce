import 'package:tf_ecommerce/SRC/Data/ProductData/ShopData/most_popular.dart';
import 'package:tf_ecommerce/SRC/Presentation/Common/Tiles/most_popular.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class WishListMostPopular extends StatelessWidget {
  const WishListMostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingRow(
            firstText: AppStrings.popular,
            nextText: AppStrings.seeAll,
            onTap: () {},
            padding: 0,
          ),
          10.h,
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ShopPopularProductData.popularProduct.length,
                itemBuilder: (context, index) {
                  return MostPopularItemsTile(
                    imagePath: ShopPopularProductData
                        .popularProduct[index].imageAddress,
                    productPrice: ShopPopularProductData
                        .popularProduct[index].productPrice,
                    status: ShopPopularProductData
                        .popularProduct[index].productStatus
                        .toString(),
                  );
                }),
          ),
          10.h,
        ],
      ),
    );
  }
}
