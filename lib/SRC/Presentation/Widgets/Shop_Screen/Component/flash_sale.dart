import 'package:tf_ecommerce/SRC/exports.dart';

class ShopFlashSale extends StatelessWidget {
  const ShopFlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FlashSaleHeading(
            isShop: true,
          ),
          10.h,
          InkWell(
            onTap: () {
              // context.to(FlashSale());
            },
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: ShopFlashSaleData.flashSale.length,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  maxCrossAxisExtent: 110),
              itemBuilder: (BuildContext context, int index) {
                return FlashSaleTile(
                  imagePath: ShopFlashSaleData.flashSale[index].imageAddress,
                  saleOFF: 20,
                );
              },
            ),
          ),
          10.h
        ],
      ),
    ));
  }
}
