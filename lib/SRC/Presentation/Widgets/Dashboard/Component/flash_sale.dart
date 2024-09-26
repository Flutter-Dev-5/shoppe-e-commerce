import 'package:tf_ecommerce/SRC/Data/ProductData/flash_sale_data.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FlashSaleHeading(),
          10.h,
          GridView.builder(
            shrinkWrap: true,
            itemCount: FlashSaleData.flashSale.length,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                maxCrossAxisExtent: 110),
            itemBuilder: (BuildContext context, int index) {
              return FlashSaleTile(
                imagePath: FlashSaleData.flashSale[index].imageAddress,
                saleOFF: 20,
              );
            },
          ),
          10.h
        ],
      ),
    ));
  }
}
