import 'package:tf_ecommerce/SRC/Data/ProductData/ShopData/shop_new_items.dart';
import 'package:tf_ecommerce/SRC/Presentation/Common/Tiles/just_for_you.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ShopJustForYou extends StatelessWidget {
  const ShopJustForYou({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppText(
                text: AppStrings.justForYou,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              10.x,
              Icon(
                Icons.star,
                color: theme.primaryColorDark,
                size: 15,
              ),
            ],
          ),
          10.y,
          GridView.builder(
            itemCount: NewItemsData.newItem.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6),
            itemBuilder: (BuildContext context, int index) {
              return JustForYouTile(
                imagePath: ShopNewItemsData.newItem[index].imageAddress,
                description: ShopNewItemsData.newItem[index].productDescription,
                price: ShopNewItemsData.newItem[index].productPrice,
              );
            },
          ),
        ],
      ),
    ));
  }
}
