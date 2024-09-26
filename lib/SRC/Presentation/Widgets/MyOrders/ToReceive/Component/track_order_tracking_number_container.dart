import 'package:tf_ecommerce/SRC/exports.dart';

class TrackOrderTrackingNumberContainer extends StatelessWidget {
  final bool isSuccessful;
  final VoidCallback onPressed;
  const TrackOrderTrackingNumberContainer(
      {super.key, required this.isSuccessful, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSuccessful
              ? theme.indicatorColor.withOpacity(0.1)
              : theme.canvasColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppText(
                  text: AppStrings.trackingNumber,
                  style: theme.textTheme.labelMedium,
                ),
                AppText(
                  text: "LGS-i92927839300763731",
                  style: theme.textTheme.labelSmall!.copyWith(fontSize: 12),
                ),
              ],
            ),
            InkWell(
                onTap: onPressed,
                child: const DisplayImage(imageAddress: trakingIconSVG)),
          ],
        ),
      ),
    );
  }
}
