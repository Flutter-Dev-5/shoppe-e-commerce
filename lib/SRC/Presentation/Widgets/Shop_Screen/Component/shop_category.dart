import 'package:tf_ecommerce/SRC/exports.dart';

class ShopCategories extends StatelessWidget {
  final bool? isShop;
  const ShopCategories({super.key, this.isShop = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingRow(
          firstText: AppStrings.categories,
          nextText: AppStrings.seeAll,
          onTap: () {},
        ),
      ],
    );
  }
}
