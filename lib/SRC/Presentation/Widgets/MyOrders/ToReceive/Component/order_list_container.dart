import 'package:tf_ecommerce/SRC/exports.dart';

class OrderListContainerToReceived extends StatelessWidget {
  final List orderedItemListOfTrack;
  const OrderListContainerToReceived(
      {super.key, required this.orderedItemListOfTrack});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 90,
      child: Card(
        color: Theme.of(context).scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
              width: 90,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: orderedItemListOfTrack.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 60,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                  ),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: DisplayImage(
                          imageAddress: orderedItemListOfTrack[index],
                        ));
                  })),
        ),
      ),
    );
  }
}
