import 'package:tf_ecommerce/SRC/Presentation/DialougBox/payment_loading_dialoge.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SelectCardTile extends StatelessWidget {
  SelectCardTile({super.key});
  final ValueNotifier<int> count = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Expanded(
        child: ValueListenableBuilder(
            valueListenable: count,
            builder: (context, cardCount, child) {
              return ListView.builder(
                  itemCount: count.value,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              context.back();
                              showDialog(
                                context: context,
                                barrierColor: Colors.black.withOpacity(0.8),
                                builder: (context) {
                                  return const PaymentLoadingDialog(
                                    isLoadingData: true,
                                  );
                                },
                              );
                            },
                            child: DisplayImage(
                              imageAddress: atmCardImage,
                              imageWidth: size.width - 80,
                            ),
                          ),
                          10.w,
                          index + 1 == count.value
                              ? InkWell(
                                  onTap: () {
                                    count.value = count.value + 1;
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: Container(
                                      width: 50,
                                      height: size.height,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: theme.primaryColorDark),
                                      child: Icon(
                                        Icons.add,
                                        color: theme.scaffoldBackgroundColor,
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox.shrink(),
                        ],
                      ),
                    );
                  });
            }));
  }
}
