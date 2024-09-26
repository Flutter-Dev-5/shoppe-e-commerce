import 'package:tf_ecommerce/SRC/exports.dart';

class TextContainer extends StatelessWidget {
  final String text;
  final bool isNotification;
  final VoidCallback onTap;
  const TextContainer(
      {super.key,
      required this.text,
      this.isNotification = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: 35,
            decoration: BoxDecoration(
              color: Theme.of(context).shadowColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Center(child: AppText(text: text)),
          ),
          isNotification
              ? Positioned(
                  top: -0,
                  right: 2,
                  child: Container(
                    width: 10,
                    height: 10,
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ))
              : Container(),
        ],
      ),
    );
  }
}
