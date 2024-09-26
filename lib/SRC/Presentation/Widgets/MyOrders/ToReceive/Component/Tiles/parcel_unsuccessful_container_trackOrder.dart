import 'package:tf_ecommerce/SRC/Presentation/Widgets/Chat/chat_screen.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ParcelUnsuccessfulContainerTrackOrder extends StatelessWidget {
  const ParcelUnsuccessfulContainerTrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        CustomNewBottomSheet.customBottomSheet(
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: AppStrings.whatShouldIDo,
                    style: theme.textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                  10.h,
                  AppText(
                    maxLines: 5,
                    text: AppStrings.dummyMessage,
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  10.h,
                  SizedBox(
                    height: 50,
                    child: CommonButton(
                        onTap: () {
                          context.back();
                          context.to(const ChatScreen());
                        },
                        text: AppStrings.chatNow),
                  )
                ],
              ),
            ),
            AppStrings.deliveryWasUnSuccessful,
            context,
            0.4,
            false);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.6,
              child: AppText(
                text: AppStrings.attemptToDeliveryWasUnSuccess,
                style: theme.textTheme.titleMedium!
                    .copyWith(fontSize: 14, color: theme.primaryColorDark),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: theme.indicatorColor),
              child: AppText(
                text: "April,25 19:20",
                style: theme.textTheme.titleSmall!.copyWith(
                    fontSize: 13, color: theme.scaffoldBackgroundColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
