import 'package:tf_ecommerce/SRC/exports.dart';

class SelectProductCategoryContainer extends StatelessWidget {
  final ValueNotifier<int> selectIndex = ValueNotifier(-1);
  SelectProductCategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: SelectProductCategoryData.categoryData.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 4 / 1),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            selectIndex.value = index;
          },
          child: ValueListenableBuilder(
              valueListenable: selectIndex,
              builder: (context, cIndex, child) {
                return SelectProductCategory(
                  isSelected: selectIndex.value == index ? true : false,
                  text: SelectProductCategoryData
                      .categoryData[index].productScopeName,
                );
              }),
        );
      },
    );
  }
}
