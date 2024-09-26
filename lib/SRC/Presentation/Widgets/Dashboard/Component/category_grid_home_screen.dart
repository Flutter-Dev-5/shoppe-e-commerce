import 'package:tf_ecommerce/SRC/Presentation/Widgets/Dashboard/Component/Tile/category_card.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class CategoriesGridHome extends StatelessWidget {
  final List<Category> categories;

  const CategoriesGridHome({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          HeadingRow(
            firstText: AppStrings.categories,
            nextText: AppStrings.seeAll,
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return CategoryCardHomeScreen(category: categories[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
