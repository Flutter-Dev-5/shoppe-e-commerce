import 'package:tf_ecommerce/SRC/exports.dart';

class SmallCircularImage extends StatelessWidget {
  final dynamic imagePath;
  const SmallCircularImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    spreadRadius: 0,
                    color: Theme.of(context).cardColor.withOpacity(0.1),
                    blurRadius: 8),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: ClipOval(
                child: DisplayImage(
                    imageAddress: imagePath, imageHeight: 110, imageWidth: 50)),
          ),
        ),
      ],
    );
  }
}
