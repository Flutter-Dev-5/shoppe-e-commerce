import 'package:tf_ecommerce/SRC/exports.dart';

class StoriesTile extends StatelessWidget {
  final dynamic imagePath;
  final bool isOfferActive;
  const StoriesTile(
      {super.key, required this.imagePath, required this.isOfferActive});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 175,
            width: 104,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: DisplayImage(
                  imageAddress: imagePath,
                  imageHeight: 175,
                  imageWidth: 104,
                ))),
        isOfferActive
            ? Positioned(
                top: 10,
                left: 10,
                child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: AppText(
                    text: AppStrings.live,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white),
                  ),
                ),
              )
            : SizedBox()
      ],
    );
  }
}
