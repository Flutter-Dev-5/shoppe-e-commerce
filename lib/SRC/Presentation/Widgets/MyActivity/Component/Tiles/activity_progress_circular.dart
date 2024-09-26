import 'package:tf_ecommerce/SRC/exports.dart';

class ActivityProgressCircular extends StatelessWidget {
  final int ordered;
  final int received;
  final int toReceive;
  const ActivityProgressCircular(
      {super.key,
      required this.ordered,
      required this.received,
      required this.toReceive});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MyActivityCircularContainer(
          text: AppStrings.ordered,
          countValue: ordered,
        ),
        MyActivityCircularContainer(
          text: AppStrings.received,
          countValue: received,
        ),
        MyActivityCircularContainer(
          text: AppStrings.toRecieve,
          countValue: toReceive,
        ),
      ],
    );
  }
}
