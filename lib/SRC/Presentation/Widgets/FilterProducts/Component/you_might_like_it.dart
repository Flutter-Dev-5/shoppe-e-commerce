import 'package:tf_ecommerce/SRC/Presentation/Common/Tiles/just_for_you.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class YouMightLikeIt extends StatelessWidget {
  final dynamic productList;
  final String text;

  const YouMightLikeIt(
      {super.key, required this.productList, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: text,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          10.y,
          GridView.builder(
            itemCount: productList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6),
            itemBuilder: (BuildContext context, int index) {
              return JustForYouTile(
                imagePath: NewItemsData.newItem[index].imageAddress,
                description: NewItemsData.newItem[index].productDescription,
                price: NewItemsData.newItem[index].productPrice,
              );
            },
          ),
        ],
      ),
    ));
  }
}
