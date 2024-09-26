import 'package:tf_ecommerce/SRC/exports.dart';

class CommentContainer extends StatelessWidget {
  final double ratingValue;
  final dynamic imagePath;
  final dynamic userComment;
  final dynamic userName;
  final int commentMaxLines;

  const CommentContainer(
      {super.key,
      required this.ratingValue,
      required this.imagePath,
      required this.userComment,
      required this.userName,
      this.commentMaxLines = 3});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: SmallCircularImage(
            imagePath: imagePath,
          ),
        ),
        5.w,
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.h,
              AppText(text: userName, style: theme.textTheme.titleMedium),
              5.h,
              AnimatedRatingStars(
                initialRating: ratingValue,
                minRating: 0.0,
                maxRating: 5.0,
                filledColor: theme.highlightColor,
                emptyColor: theme.highlightColor,
                filledIcon: Icons.star,
                halfFilledIcon: Icons.star_half,
                emptyIcon: Icons.star_border,
                displayRatingValue: true,
                interactiveTooltips: true,
                customFilledIcon: Icons.star,
                customHalfFilledIcon: Icons.star_half,
                customEmptyIcon: Icons.star_border,
                starSize: 10.0,
                readOnly: true,
                onChanged: (val) {},
              ),
              5.h,
              AppText(
                text: userComment,
                style: theme.textTheme.titleSmall!.copyWith(
                  fontSize: 12,
                ),
                maxLines: commentMaxLines,
              ),
            ],
          ),
        )
      ],
    );
  }
}
