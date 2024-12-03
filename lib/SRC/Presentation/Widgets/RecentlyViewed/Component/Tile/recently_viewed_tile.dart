import 'package:tf_ecommerce/SRC/exports.dart';

class RecentlyViewedTile extends StatelessWidget {
  final dynamic imagePath;
  final dynamic price;
  final dynamic description;
  const RecentlyViewedTile({
    super.key,
    required this.imagePath,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Card(
            color: theme.scaffoldBackgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    height: 300,
                    width: 300,
                  )),
            ),
          ),
        ),
        2.y,
        Container(
          height: 35,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AppText(
            text: "$description Hello world",
            style:
                Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 13),
            maxLines: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AppText(
            text: "\$ $price",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        )
      ],
    );
  }
}
