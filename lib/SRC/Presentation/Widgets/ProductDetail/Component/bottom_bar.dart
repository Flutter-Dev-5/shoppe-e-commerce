import 'package:tf_ecommerce/SRC/exports.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    ValueNotifier<bool> isSelectedFav = ValueNotifier(false);

    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Row(
          children: [
            ValueListenableBuilder(
                valueListenable: isSelectedFav,
                builder: (context, isSelectedVal, child) {
                  return InkWell(
                    onTap: () {
                      isSelectedFav.value = !isSelectedVal;
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: theme.shadowColor.withOpacity(0.2)),
                      child: DisplayImage(
                        imageWidth: 30,
                        imageHeight: 30,
                        imageAddress: AppAssets.favIcon,
                        color: isSelectedVal
                            ? theme.primaryColorDark
                            : theme.primaryColorLight,
                      ),
                    ),
                  );
                }),
            5.x,
            Flexible(
                child: CommonButton(
                    // isLimitReached: true,
                    height: 45,
                    onTap: () {},
                    text: AppStrings.addToCart)),
            5.x,
            Flexible(
                child: CommonButton(
                    height: 45, onTap: () {}, text: AppStrings.buyNow)),
          ],
        ),
      ),
    );
  }
}
