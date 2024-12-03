import 'package:tf_ecommerce/SRC/exports.dart';

class NewItemsTile extends StatelessWidget {
  final dynamic imagePath;
  final String imageDescription;
  final double productPrice;
  const NewItemsTile(
      {super.key,
      required this.imagePath,
      required this.productPrice,
      required this.imageDescription});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        SizedBox(
          height: 210,
          width: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: theme.scaffoldBackgroundColor,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: DisplayImage(
                        imageAddress: imagePath,
                        imageHeight: 130,
                        imageWidth: 130,
                      )),
                ),
              ),
              2.y,
              SizedBox(
                height: 25,
                child: AppText(
                  text: imageDescription,
                  style: Theme.of(context).textTheme.titleSmall,
                  maxLines: 2,
                ),
              ),
              2.y,
              AppText(
                text: "\$ $productPrice",
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
        ),
        2.x,
      ],
    );
  }
}
