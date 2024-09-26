import 'package:tf_ecommerce/SRC/exports.dart';

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 134,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                spreadRadius: 0,
                color: Theme.of(context).cardColor.withOpacity(0.1),
                blurRadius: 8),
          ]),
      child: SvgPicture.asset(shoppingBagIconSvg,
          width: 81.4, height: 92, fit: BoxFit.scaleDown),
    );
  }
}
