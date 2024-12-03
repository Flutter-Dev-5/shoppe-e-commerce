import 'package:tf_ecommerce/SRC/exports.dart';

class CustomDialog extends StatefulWidget {
  final String? title;
  final String? content;
  final VoidCallback onConfirm;

  final dynamic icon;

  bool isRating;
  double ratingValueOfProduct;

  CustomDialog({
    super.key,
    this.title,
    this.content,
    required this.onConfirm,
    required this.icon,
    this.isRating = false,
    this.ratingValueOfProduct = 0.0,
  });

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  30.y,
                  SizedBox(
                    child: widget.isRating
                        ? Column(
                            children: [
                              AppText(
                                text: "${AppStrings.done}!",
                                style: theme.textTheme.displayMedium,
                              ),
                              5.y,
                              AppText(
                                text: AppStrings
                                    .yourCardHasBeenSuccessfullyCharged,
                                style: theme.textTheme.titleSmall!.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              20.y,
                              AnimatedRatingStars(
                                initialRating: widget.ratingValueOfProduct,
                                minRating: 0.0,
                                maxRating: 5.0,
                                filledColor: theme.highlightColor,
                                emptyColor: theme.highlightColor,
                                filledIcon: Icons.star,
                                halfFilledIcon: Icons.star_half,
                                emptyIcon: Icons.star_border,
                                onChanged: (double rating) {},
                                displayRatingValue: true,
                                interactiveTooltips: true,
                                customFilledIcon: Icons.star,
                                customHalfFilledIcon: Icons.star_half,
                                customEmptyIcon: Icons.star_border,
                                starSize: 25.0,
                                animationDuration:
                                    const Duration(milliseconds: 300),
                                animationCurve: Curves.easeInOut,
                                readOnly: true,
                              ),
                              30.y,
                            ],
                          )
                        : Column(
                            children: [
                              AppText(
                                text: "${AppStrings.done}!",
                                style: theme.textTheme.displayMedium,
                              ),
                              5.y,
                              AppText(
                                text: AppStrings
                                    .yourCardHasBeenSuccessfullyCharged,
                                style: theme.textTheme.titleSmall!.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              40.y
                            ],
                          ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -50,
            left: size.width / 2.5,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        color: Theme.of(context).cardColor.withOpacity(0.1),
                        blurRadius: 8),
                  ]),
              padding: const EdgeInsets.all(4),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.primaryColorDark,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.done,
                        color: theme.scaffoldBackgroundColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
