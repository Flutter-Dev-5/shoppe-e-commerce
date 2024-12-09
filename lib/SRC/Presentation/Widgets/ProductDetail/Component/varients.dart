import 'package:tf_ecommerce/SRC/exports.dart';

class VarientOfProductDetail extends StatelessWidget {
  const VarientOfProductDetail({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    text: AppStrings.variation,
                    style: theme.textTheme.displayMedium,
                  ),
                  5.x,
                  Container(
                    height: 25,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: theme.canvasColor,
                    ),
                    child: AppText(
                      text: "pink",
                      style: theme.textTheme.labelSmall!
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ),
                  5.x,
                  Container(
                    height: 25,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: theme.canvasColor,
                    ),
                    child: AppText(
                      text: "M",
                      style: theme.textTheme.labelSmall!
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
              ArrowForward(onTap: () {}),
            ],
          ),
          10.y,
          SizedBox(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const DisplayImage(imageAddress: AppAssets.image33)),
                      ),
                      5.x,
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
