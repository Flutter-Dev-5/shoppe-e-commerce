import 'package:tf_ecommerce/SRC/exports.dart';

class TrackOrderContainer extends StatelessWidget {
  final String headingTitle;
  final String detailsOfHeading;
  final dynamic dateAndTime;
  final bool isSuccessful;
  const TrackOrderContainer({
    super.key,
    required this.headingTitle,
    required this.detailsOfHeading,
    required this.dateAndTime,
    required this.isSuccessful,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isSuccessful && headingTitle == AppStrings.delivered
                  ? Row(
                      children: [
                        AppText(
                          text: headingTitle,
                          style: theme.textTheme.titleMedium,
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SelectedMarkContainer(
                            width: 20, height: 20, iconSize: 18),
                      ],
                    )
                  : SizedBox(
                      width: size.width * 0.6,
                      child: AppText(
                        text: headingTitle,
                        style: theme.textTheme.titleMedium,
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: isSuccessful
                        ? theme.indicatorColor.withOpacity(0.1)
                        : theme.canvasColor),
                child: AppText(
                  text: dateAndTime,
                  style: theme.textTheme.titleSmall!.copyWith(
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            child: AppText(
              text: detailsOfHeading,
              maxLines: 2,
              style: theme.textTheme.titleSmall!.copyWith(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
