import 'package:tf_ecommerce/SRC/exports.dart';

class MostPopularItemsTile extends StatelessWidget {
  final dynamic imagePath;
  final dynamic productPrice;
  final dynamic status;

  const MostPopularItemsTile(
      {super.key,
      required this.imagePath,
      required this.productPrice,
      required this.status});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        Card(
          color: theme.scaffoldBackgroundColor,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: DisplayImage(
                      imageAddress: imagePath,
                      imageHeight: 90,
                      imageWidth: 103,
                    )),
              ),
              5.h,
              SizedBox(
                width: size.width / 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          AppText(
                            text: productPrice.toString(),
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          2.w,
                          DisplayImage(
                            imageAddress: heartIconSvg,
                            imageHeight: 10,
                            imageWidth: 10,
                            color: Theme.of(context).primaryColorDark,
                          ),
                        ],
                      ),
                      AppText(
                        text: status.toString(),
                        style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        2.w,
      ],
    );
  }
}
