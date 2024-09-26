import 'package:tf_ecommerce/SRC/Data/ProductData/FilterData/filter_data.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SelectProduct extends StatelessWidget {
  const SelectProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        SizedBox(
          height: 200,
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: FilterData.filterData.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 70, childAspectRatio: 2 / 3),
              itemBuilder: (context, index) {
                return ValueListenableBuilder(
                    valueListenable:
                        ValueNotifier(FilterData.filterData[index].isSelected),
                    builder: (context, isSelected, child) {
                      return InkWell(
                        onTap: () {
                          FilterData.filterData[index].isSelected =
                              !FilterData.filterData[index].isSelected;
                          (context as Element).markNeedsBuild();
                        },
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Card(
                                    color: theme.scaffoldBackgroundColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                        FilterData.filterData[index]
                                            .productImageAddress,
                                      )),
                                    )),
                                FilterData.filterData[index].isSelected
                                    ? const Positioned(
                                        right: 0,
                                        top: 7,
                                        child: SelectedMarkContainer(
                                          width: 20,
                                          height: 20,
                                          iconSize: 12,
                                        ))
                                    : Positioned(right: 0, child: Container()),
                              ],
                            ),
                            Center(
                                child: AppText(
                              text: FilterData.filterData[index].productName,
                              style: theme.textTheme.titleSmall!
                                  .copyWith(fontSize: 12),
                            ))
                          ],
                        ),
                      );
                    });
              }),
        ),
      ],
    );
  }
}
