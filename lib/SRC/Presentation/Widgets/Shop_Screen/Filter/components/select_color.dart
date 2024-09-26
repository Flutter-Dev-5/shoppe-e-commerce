import 'package:tf_ecommerce/SRC/exports.dart';

class SelectColor extends StatelessWidget {
  SelectColor({super.key});

  final ValueNotifier<int> selectedColorIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: AppStrings.color,
          style: theme.textTheme.displayMedium,
        ),
        10.h,
        SizedBox(
          height: 45,
          child: ListView.builder(
            itemCount: SelectColorData.selectColor.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  selectedColorIndex.value = index;
                },
                child: Row(
                  children: [
                    ValueListenableBuilder<int>(
                      valueListenable: selectedColorIndex,
                      builder: (context, selectedIndex, child) {
                        return ColorContainer(
                          color: Color(SelectColorData.selectColor[index]),
                          isSelected: selectedIndex == index ? true : false,
                        );
                      },
                    ),
                    5.w,
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
