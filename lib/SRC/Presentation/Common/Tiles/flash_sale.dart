import 'package:tf_ecommerce/SRC/exports.dart';

class FlashSaleTile extends StatelessWidget {
  final dynamic imagePath;
  final int saleOFF;
  const FlashSaleTile(
      {super.key, required this.imagePath, required this.saleOFF});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 115,
      height: 115,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 0,
                      color: theme.cardColor.withOpacity(0.1),
                      blurRadius: 8),
                ]),
            width: 109,
            height: 114,
            padding: const EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: DisplayImage(
                  imageAddress: imagePath, imageHeight: 100, imageWidth: 100),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 4, right: 6, top: 4, bottom: 4),
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: 30,
                height: 20,
                child: Container(
                  height: 18,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4)),
                    color: theme.indicatorColor,
                  ),
                  padding: const EdgeInsets.all(2),
                  child: Center(
                    child: AppText(
                      text: saleOFF.toString() + "% ",
                      style: theme.textTheme.titleSmall!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
