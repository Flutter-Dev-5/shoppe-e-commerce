import 'package:tf_ecommerce/SRC/Presentation/Widgets/ProductDetail/component/view_all_reviews.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class RatingAndReviews extends StatelessWidget {
  const RatingAndReviews({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<double> ratingValue = ValueNotifier(3.5);
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.h,
          AppText(
            text: AppStrings.ratingAndReviews,
            style: theme.textTheme.displayMedium,
          ),
          10.h,
          ValueListenableBuilder(
              valueListenable: ratingValue,
              builder: (context, rating, child) {
                return Row(
                  children: [
                    AnimatedRatingStars(
                      initialRating: 3.5,
                      minRating: 0.0,
                      maxRating: 5.0,
                      filledColor: theme.highlightColor,
                      emptyColor: theme.highlightColor,
                      filledIcon: Icons.star,
                      halfFilledIcon: Icons.star_half,
                      emptyIcon: Icons.star_border,
                      onChanged: (double rating) {
                        ratingValue.value = rating;
                      },
                      displayRatingValue: true,
                      interactiveTooltips: true,
                      customFilledIcon: Icons.star,
                      customHalfFilledIcon: Icons.star_half,
                      customEmptyIcon: Icons.star_border,
                      starSize: 20.0,
                      animationDuration: const Duration(milliseconds: 300),
                      animationCurve: Curves.easeInOut,
                      readOnly: false,
                    ),
                    5.w,
                    Container(
                      height: 20,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: theme.primaryColorDark.withOpacity(0.1),
                      ),
                      child: AppText(
                        text: "${ratingValue.value}/5",
                        style: theme.textTheme.labelMedium,
                      ),
                    )
                  ],
                );
              }),
          10.h,
          CommentContainer(
            ratingValue: ratingValue.value,
            imagePath: image33,
            userComment: AppStrings.dummy,
            userName: "Veronika",
          ),
          20.h,
          SizedBox(
              height: 50,
              child: CommonButton(
                  onTap: () {
                    context.to(const ViewAllReviews());
                  },
                  text: AppStrings.viewAllReviews)),
          10.h,
          const HomePageMostPopular(
            padding: 0,
          ),
          10.h,
        ],
      ),
    );
  }
}
