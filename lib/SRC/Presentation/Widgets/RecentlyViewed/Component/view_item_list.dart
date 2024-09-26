import 'package:tf_ecommerce/SRC/Data/ProductData/RecentlyViewData/recently_viewed.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

import 'Tile/recently_viewed_tile.dart';

class RecentlyViewItemList extends StatelessWidget {
  const RecentlyViewItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
        height: size.height,
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: RecentlyViewItemData.recentlyViewedItemData.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return RecentlyViewedTile(
              imagePath: RecentlyViewItemData
                  .recentlyViewedItemData[index].imageAddress,
              description: RecentlyViewItemData
                  .recentlyViewedItemData[index].productDescription,
              price: RecentlyViewItemData
                  .recentlyViewedItemData[index].productPrice,
            );
          },
        ));
  }
}
