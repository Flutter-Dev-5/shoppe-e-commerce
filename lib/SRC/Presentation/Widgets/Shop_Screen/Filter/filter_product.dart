import 'package:tf_ecommerce/SRC/Presentation/Widgets/Shop_Screen/Filter/components/buttons.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class FilterProduct extends StatelessWidget {
  const FilterProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onHorizontalDragEnd: (detail) {
        if (detail.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const TitleBar(),
                const SelectProduct(),
                20.h,
                SelectSizeOfProduct(),
                20.h,
                SelectColor(),
                20.h,
                const SelectPriceRange(
                  minAmount: 20,
                  maxAmount: 100,
                ),
                10.h,
                SelectProductCategoryContainer(),
                10.h,
                const SizedBox(height: 60, child: ButtonsOfFilter()),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
