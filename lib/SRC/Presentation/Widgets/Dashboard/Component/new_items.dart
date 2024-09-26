import 'package:tf_ecommerce/SRC/Presentation/Widgets/FilterProducts/all_category_of_products.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/ProductDetail/product_detail.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class NewItems extends StatelessWidget {
  final dynamic productList;
  const NewItems({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 271,
      child: Column(
        children: [
          HeadingRow(
            firstText: AppStrings.newItems,
            nextText: AppStrings.seeAll,
            onTap: () {
              context.to(AllCategoryScreen());
            },
          ),
          10.h,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  primary: false,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        context.to(const ProductDetail());
                      },
                      child: NewItemsTile(
                        imagePath: productList[index].imageAddress,
                        productPrice: productList[index].productPrice,
                        imageDescription: productList[index].productDescription,
                      ),
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
