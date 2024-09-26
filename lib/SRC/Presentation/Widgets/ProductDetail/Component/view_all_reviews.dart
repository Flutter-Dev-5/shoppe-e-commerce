import 'package:tf_ecommerce/SRC/Data/ProductData/ReviewData/review_data.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ViewAllReviews extends StatelessWidget {
  const ViewAllReviews({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    stretch: false,
                    snap: true,
                    floating: true,
                    collapsedHeight: 60,
                    expandedHeight: 40,
                    leadingWidth: size.width,
                    automaticallyImplyLeading: true,
                    leading: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              context.back();
                            },
                            icon: Icon(Icons.arrow_back_ios)),
                        10.w,
                        AppText(
                          text: AppStrings.reviews,
                          style: theme.textTheme.displayLarge,
                        ),
                      ],
                    ),
                    backgroundColor: theme.scaffoldBackgroundColor,
                    surfaceTintColor: Colors.transparent,
                  ),
                  SliverAnimatedList(
                      initialItemCount: ReviewDataOfComments.reviewData.length,
                      itemBuilder: (context, index, value) {
                        return Column(
                          children: [
                            CommentContainer(
                              ratingValue: ReviewDataOfComments
                                  .reviewData[index].ratingValue,
                              imagePath: ReviewDataOfComments
                                  .reviewData[index].imagePath,
                              userComment: ReviewDataOfComments
                                  .reviewData[index].commentDetails,
                              userName: ReviewDataOfComments
                                  .reviewData[index].userName,
                              commentMaxLines: 5,
                            ),
                            10.h,
                          ],
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
