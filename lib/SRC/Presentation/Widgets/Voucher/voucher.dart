import 'package:tf_ecommerce/SRC/exports.dart';

class Voucher extends StatefulWidget {
  const Voucher({super.key});

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  ValueNotifier<int> isSelected = ValueNotifier(1);

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
        body: ValueListenableBuilder(
            valueListenable: isSelected,
            builder: (context, index, animation) {
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: false,
                    floating: true,
                    snap: true,
                    stretch: false,
                    leadingWidth: size.width,
                    collapsedHeight: 70,
                    expandedHeight: 150,
                    toolbarHeight: 70,
                    backgroundColor: theme.scaffoldBackgroundColor,
                    surfaceTintColor: Colors.transparent,
                    leading: const CustomAppBar(
                      isHomePage: false,
                      isMyActivity: true,
                      text: AppStrings.vouchers,
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      background: SizedBox(
                        width: size.width,
                        child: Column(
                          children: [
                            120.y,
                            Row(
                              children: [
                                Flexible(
                                  child: VoucherButtons(
                                    isSelected: isSelected,
                                    buttonIndex: 1,
                                    label: AppStrings.activeReward,
                                    onButtonSelected: (index) {
                                      isSelected.value = index;
                                    },
                                  ),
                                ),
                                Flexible(
                                  child: VoucherButtons(
                                    isSelected: isSelected,
                                    buttonIndex: 2,
                                    label: AppStrings.progress,
                                    onButtonSelected: (index) {
                                      isSelected.value = index;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  isSelected.value == 1
                      ? SliverAnimatedList(
                          initialItemCount: VoucherData.voucherData.length,
                          itemBuilder: (BuildContext context, int index,
                              Animation<double> animation) {
                            return index == 0
                                ? VoucherTile(
                                    voucherValidDate: VoucherData
                                        .voucherData[index].validityDate,
                                    voucherImage: VoucherData
                                        .voucherData[index].imagePath,
                                    voucherTitle: VoucherData
                                        .voucherData[index].voucherName,
                                    voucherDiscount: VoucherData
                                        .voucherData[index].voucherDiscount,
                                    buttonText: "Collected",
                                  )
                                : VoucherTile(
                                    voucherValidDate: VoucherData
                                        .voucherData[index].validityDate,
                                    voucherImage: VoucherData
                                        .voucherData[index].imagePath,
                                    voucherTitle: VoucherData
                                        .voucherData[index].voucherName,
                                    voucherDiscount: VoucherData
                                        .voucherData[index].voucherDiscount,
                                    buttonText: "Collected",
                                    isNearExpire: true,
                                  );
                          },
                        )
                      : isSelected.value == 2
                          ? SliverToBoxAdapter(
                              child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: SizedBox(
                                  width: size.width,
                                  height: size.height,
                                  child: GridView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        VoucherProgressData.progressData.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 295,
                                            crossAxisSpacing: 10),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return VoucherProgressContainer(
                                        isDone: VoucherProgressData
                                            .progressData[index].isDone,
                                        isProgressing: VoucherProgressData
                                            .progressData[index].isProgressing,
                                        progressValue: VoucherProgressData
                                            .progressData[index].progressValue,
                                        imagePath: VoucherProgressData
                                            .progressData[index].imagePath,
                                        title: VoucherProgressData
                                            .progressData[index].title,
                                        description: VoucherProgressData
                                            .progressData[index].description,
                                      );
                                    },
                                  )),
                            ))
                          : const SizedBox.shrink(),
                ],
              );
            }),
      ),
    );
  }
}
