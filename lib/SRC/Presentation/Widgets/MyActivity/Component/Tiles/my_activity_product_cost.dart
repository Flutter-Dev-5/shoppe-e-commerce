import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/Component/Tiles/selling_container.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class MyActivityProductCost extends StatelessWidget {
  const MyActivityProductCost({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SellingContainer(
                text: "${AppStrings.clothing} \$ 18300",
                color: theme.primaryColorDark,
              ),
              const SellingContainer(
                text: "${AppStrings.lingers} \$ 27700",
                color: Color(0xff9DEB44),
              ),
            ],
          ),
          10.y,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SellingContainer(
                  text: "${AppStrings.shoes} \$ 8300",
                  color: Color(0xffFE7F00)),
              SellingContainer(
                text: "${AppStrings.bage} \$ 9200",
                color: Color(0xffF34D75),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
