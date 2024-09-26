import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyOrders/ToReceive/component/track_order_tracking_number_container.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ToReceivedOrderProgress extends StatefulWidget {
  const ToReceivedOrderProgress({super.key});

  @override
  State<ToReceivedOrderProgress> createState() =>
      _ToReceivedOrderProgressState();
}

class _ToReceivedOrderProgressState extends State<ToReceivedOrderProgress> {
  bool isOrderSuccessFull = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              stretch: false,
              pinned: false,
              collapsedHeight: 80,
              expandedHeight: 100,
              toolbarHeight: 80,
              backgroundColor: theme.scaffoldBackgroundColor,
              surfaceTintColor: Colors.transparent,
              leadingWidth: size.width,
              leading: const CustomAppBar(
                isHomePage: false,
                subTitle: AppStrings.trackYourOrder,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomProgressBar(
                isSuccessFul: isOrderSuccessFull,
                getProgress: 1,
              ),
            ),
            SliverToBoxAdapter(
              child: TrackOrderTrackingNumberContainer(
                onPressed: () {
                  setState(() {
                    isOrderSuccessFull = !isOrderSuccessFull;
                  });
                },
                isSuccessful: isOrderSuccessFull,
              ),
            ),
            SliverToBoxAdapter(
                child: TrackOrderContainer(
              isSuccessful: isOrderSuccessFull,
              headingTitle: AppStrings.packed,
              detailsOfHeading: AppStrings.parcelPackDetail,
              dateAndTime: "April,19 12:31",
            )),
            SliverToBoxAdapter(
                child: TrackOrderContainer(
              isSuccessful: isOrderSuccessFull,
              headingTitle: AppStrings.onWayLogistic,
              detailsOfHeading: AppStrings.dummy,
              dateAndTime: "April,19 16:31",
            )),
            SliverToBoxAdapter(
                child: TrackOrderContainer(
              isSuccessful: isOrderSuccessFull,
              headingTitle: AppStrings.arriveAtLogistic,
              detailsOfHeading: AppStrings.dummy,
              dateAndTime: "April,19 19:31",
            )),
            SliverToBoxAdapter(
                child: TrackOrderContainer(
              isSuccessful: isOrderSuccessFull,
              headingTitle: AppStrings.shipped,
              detailsOfHeading: AppStrings.dummy,
              dateAndTime: "April,20 19:31",
            )),
            SliverToBoxAdapter(
              child: TrackOrderContainer(
                isSuccessful: isOrderSuccessFull,
                headingTitle: AppStrings.outForDelivery,
                detailsOfHeading: AppStrings.dummy,
                dateAndTime: "April,22 19:31",
              ),
            ),
            isOrderSuccessFull
                ? SliverToBoxAdapter(
                    child: TrackOrderContainer(
                      isSuccessful: isOrderSuccessFull,
                      headingTitle: AppStrings.delivered,
                      detailsOfHeading: AppStrings.dummy,
                      dateAndTime: "April,22 19:31",
                    ),
                  )
                : const SliverToBoxAdapter(
                    child: ParcelUnsuccessfulContainerTrackOrder(),
                  )
          ],
        ),
      ),
    );
  }
}
