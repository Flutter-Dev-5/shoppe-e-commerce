import 'package:tf_ecommerce/SRC/exports.dart';

class ShopSearchBar extends StatelessWidget {
  const ShopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        10.y,
        Row(
          children: [
            AppText(
              text: AppStrings.shop,
              style: theme.textTheme.displayLarge,
            ),
            10.x,
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    filled: true,
                    fillColor: Theme.of(context).canvasColor,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    hintStyle: Theme.of(context).textTheme.labelLarge,
                    hintText: "Search",
                    suffix: SvgPicture.asset(cameraIconSVG)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
