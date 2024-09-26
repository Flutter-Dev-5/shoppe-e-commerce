import 'package:tf_ecommerce/SRC/exports.dart';

class ProfileImage extends StatelessWidget {
  final dynamic image;
  const ProfileImage({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 105,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                spreadRadius: 0,
                color: Theme.of(context).cardColor.withOpacity(0.1),
                blurRadius: 8),
          ]),
      child: ClipOval(
          child: DisplayImage(
        imageAddress: image ?? profileImage,
        imageWidth: 91,
        imageHeight: 91,
        fit: BoxFit.cover,
      )),
    );
  }
}
