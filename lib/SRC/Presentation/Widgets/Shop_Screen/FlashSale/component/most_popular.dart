import 'package:tf_ecommerce/SRC/Data/ProductData/ShopData/FlashSaleData/most_popular.dart';
import 'package:tf_ecommerce/SRC/Presentation/Common/Tiles/most_popular.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

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
          ),
          10.y,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: FlashSaleMostPopularData.flashSalePopular.length,
                  itemBuilder: (context, index) {
                    return MostPopularItemsTile(
                      imagePath: FlashSaleMostPopularData
                          .flashSalePopular[index].imageAddress,
                      productPrice: FlashSaleMostPopularData
                          .flashSalePopular[index].productPrice,
                      status: FlashSaleMostPopularData
                          .flashSalePopular[index].productStatus
                          .toString(),
                    );
                  }),
            ),
          ),
          10.y,
        ],
      ),
    );
  }
}
