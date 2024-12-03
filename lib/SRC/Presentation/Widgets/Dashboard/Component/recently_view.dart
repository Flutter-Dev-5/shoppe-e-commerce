import 'package:tf_ecommerce/SRC/Presentation/Widgets/RecentlyViewed/recently_viewed.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class RecentlyView extends StatelessWidget {
  final dynamic itemList;
  final double padding;

  const RecentlyView({super.key, required this.itemList, this.padding = 20});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: AppStrings.recentlyViewed,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            10.y,
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        context.to(const RecentlyViewedRecord());
                      },
                      child: SmallCircularImage(
                        imagePath: itemList[index].productImage,
                      ),
                    );
                  }),
            ),
            10.y,
          ],
        ),
      ),
    );
  }
}
