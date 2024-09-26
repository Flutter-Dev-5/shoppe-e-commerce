import 'package:tf_ecommerce/SRC/exports.dart';

class SingInButton extends StatelessWidget {
  final String text;
  final dynamic iconPath;

  const SingInButton({
    super.key,
    required this.text,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    print('ICON:$iconPath');
    return Container(
      height: 49,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context).primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DisplayImage(
              imageAddress: iconPath,
              imageWidth: 24,
              imageHeight: 24,
            ),
            AppText(
              text: text,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
