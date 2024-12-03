import 'package:tf_ecommerce/SRC/exports.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 220,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.y,
            AppText(
              text: AppStrings.stories,
              style: theme.textTheme.displayMedium,
            ),
            10.y,
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: StoriesListData.stories.length,
                  primary: false,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        context.to(
                          const Shop(),
                        );
                      },
                      child: StoriesTile(
                        imagePath: StoriesListData.stories[index].imageAddress,
                        isOfferActive: StoriesListData.stories[index].isLive,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
