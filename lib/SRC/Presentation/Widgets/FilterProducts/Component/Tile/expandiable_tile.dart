import 'package:tf_ecommerce/SRC/exports.dart';

class ExpandAbleTile extends StatelessWidget {
  final List<dynamic> categories;
  final String title;
  final dynamic imageAddress;
  const ExpandAbleTile(
      {super.key,
      required this.categories,
      required this.title,
      required this.imageAddress});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.scaffoldBackgroundColor,
      child: Container(
        padding: const EdgeInsets.all(4),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            iconColor: theme.primaryColorDark,
            trailing: const Icon(Icons.keyboard_arrow_down_outlined),
            collapsedIconColor: theme.cardColor,
            collapsedBackgroundColor: theme.scaffoldBackgroundColor,
            backgroundColor: theme.scaffoldBackgroundColor,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: DisplayImage(
                imageAddress: imageAddress,
                imageWidth: 60,
                fit: BoxFit.fill,
              ),
            ),
            title: AppText(
              text: title,
              style: theme.textTheme.titleMedium,
            ),
            children: [
              10.h,
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    childAspectRatio: 7 / 2),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: theme.indicatorColor.withOpacity(0.5),
                            width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Center(
                          child: AppText(
                        text: categories[index],
                        style: theme.textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.w500),
                      )),
                    ),
                  );
                },
              ),
              10.h,
            ],
          ),
        ),
      ),
    );
  }
}
