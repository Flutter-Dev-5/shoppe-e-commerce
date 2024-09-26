import 'package:tf_ecommerce/SRC/exports.dart';

class TopProducts extends StatelessWidget {
  final dynamic itemList;

  const TopProducts({super.key, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: AppStrings.topProducts,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            10.h,
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return SmallCircularImage(
                      imagePath: itemList[index].productImage,
                    );
                  }),
            ),
            10.h,
          ],
        ),
      ),
    );
  }
}
