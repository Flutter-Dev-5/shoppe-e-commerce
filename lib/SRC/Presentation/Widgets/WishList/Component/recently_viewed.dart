import 'package:tf_ecommerce/SRC/Presentation/Widgets/RecentlyViewed/recently_viewed.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class RecentlyViewedWishList extends StatelessWidget {
  const RecentlyViewedWishList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        60.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              text: AppStrings.recentlyViewed,
              style: theme.textTheme.displayMedium,
            ),
            ArrowForward(onTap: () {}),
          ],
        ),
        10.h,
        SizedBox(
          height: 60,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CircularListData.circularData.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        context.to(const RecentlyViewedRecord());
                      },
                      child: SmallCircularImage(
                        imagePath:
                            CircularListData.circularData[index].productImage,
                      ),
                    ),
                    5.w,
                  ],
                );
              }),
        ),
      ],
    );
  }
}
