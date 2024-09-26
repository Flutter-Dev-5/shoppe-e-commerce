import 'package:tf_ecommerce/SRC/exports.dart';

class CategoryList extends StatelessWidget {
  final ValueNotifier<String> selectedCategory;
  const CategoryList({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedCategory,
        builder: (context, selectedIndex, child) {
          return Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Row(
              children: [
                Flexible(
                  child: CategoryButton(
                    isSelected: selectedCategory.value == "All",
                    text: AppStrings.all,
                    onPressed: () => selectedCategory.value = "All",
                  ),
                ),
                5.w,
                Flexible(
                  child: CategoryButton(
                    isSelected: selectedCategory.value == "Female",
                    text: AppStrings.female,
                    onPressed: () => selectedCategory.value = "Female",
                  ),
                ),
                5.w,
                Flexible(
                  child: CategoryButton(
                    isSelected: selectedCategory.value == "Male",
                    text: AppStrings.male,
                    onPressed: () => selectedCategory.value = "Male",
                  ),
                ),
              ],
            ),
          );
        });
  }
}
