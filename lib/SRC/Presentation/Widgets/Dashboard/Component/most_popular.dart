import 'package:tf_ecommerce/SRC/exports.dart';

class HomePageMostPopular extends StatelessWidget {
  final double padding;
  const HomePageMostPopular({super.key, this.padding = 20});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingRow(
            firstText: AppStrings.popular,
            nextText: AppStrings.seeAll,
            onTap: () {},
            padding: padding,
          ),
          10.h,
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: padding),
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
          10.h,
        ],
      ),
    );
  }
}
