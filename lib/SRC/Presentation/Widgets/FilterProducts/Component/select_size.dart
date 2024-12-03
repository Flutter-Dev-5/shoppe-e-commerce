import 'package:tf_ecommerce/SRC/Presentation/Widgets/Shop_Screen/Filter/components/Tiles/is_selected_product.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/Shop_Screen/Filter/components/Tiles/size_product_container.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

final List<String> sizesOfProduct = [
  "XS",
  " S ",
  " M ",
  " L ",
  "XL",
  "2XL",
];

class SelectSizeOfProduct extends StatelessWidget {
  SelectSizeOfProduct({super.key});

  static final ValueNotifier<String> selectedDiscount =
      ValueNotifier(sizesOfProduct[0]);
  final ValueNotifier<int> isSelected = ValueNotifier(-1);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              text: AppStrings.size,
              style: theme.textTheme.displayMedium,
            ),
            Row(
              children: [
                SizeProductContainer(
                  index: 0, // Assign a unique index for each button
                  text: AppStrings.clothing,
                  selectedIndexNotifier: isSelected,
                ),
                5.x,
                SizeProductContainer(
                  index: 1,
                  text: AppStrings.shoes,
                  selectedIndexNotifier: isSelected,
                ),
              ],
            )
          ],
        ),
        5.y,
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 25,
              width: size.width - 12,
              decoration: BoxDecoration(
                  color: theme.primaryColorDark.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              width: size.width - 12,
              child: ValueListenableBuilder(
                  valueListenable: selectedDiscount,
                  builder: (context, selectedSnap, child) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: sizesOfProduct.map((val) {
                        return InkWell(
                          onTap: () => selectedDiscount.value = val,
                          child: IsSelectedProduct(
                            label: val,
                            isSelected: selectedSnap == val,
                          ),
                        );
                      }).toList(),
                    );
                  }),
            )
          ],
        ),
      ],
    );
  }
}
