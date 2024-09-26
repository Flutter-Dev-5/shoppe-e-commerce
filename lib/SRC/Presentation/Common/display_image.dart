import 'package:tf_ecommerce/SRC/exports.dart';

class DisplayImage extends StatelessWidget {
  final double? imageHeight;
  final double? imageWidth;
  final dynamic imageAddress;
  final BoxFit fit;
  final Color? color;
  const DisplayImage({
    super.key,
    required this.imageAddress,
    this.imageHeight,
    this.imageWidth,
    this.color,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return imageAddress is IconData
        ? Icon(
            imageAddress,
            size: imageHeight,
            color: color,
          )
        : imageAddress is String &&
                imageAddress.split('.').last.toLowerCase() == 'svg'
            ? SvgPicture.asset(
                imageAddress,
                width: imageWidth,
                height: imageHeight,
                fit: fit,
                color: color,
              )
            : imageAddress is String &&
                    imageExtension.contains(imageAddress.split('.').last)
                ? Image.asset(
                    imageAddress,
                    width: imageWidth,
                    height: imageHeight,
                    fit: fit,
                    color: color,
                  )
                : imageAddress is String
                    ? Image.memory(
                        base64Decode(imageAddress!),
                        width: imageWidth,
                        height: imageHeight,
                        color: color,
                      )
                    : Container();
  }
}
