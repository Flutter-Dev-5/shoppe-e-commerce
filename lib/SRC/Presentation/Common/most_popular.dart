import 'package:tf_ecommerce/SRC/exports.dart';

class FlashSaleMostPopular extends StatelessWidget {
  const FlashSaleMostPopular({super.key});

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
                  itemCount: PopularProductData.popularProduct.length,
                  itemBuilder: (context, index) {
                    return MostPopularItemsTile(
                      imagePath:
                          PopularProductData.popularProduct[index].imageAddress,
                      productPrice:
                          PopularProductData.popularProduct[index].productPrice,
                      status: PopularProductData
                          .popularProduct[index].productStatus
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
