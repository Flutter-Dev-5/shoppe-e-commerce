import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/select_sizes_container.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SelectSizesSetting extends StatelessWidget {
  const SelectSizesSetting({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selectedSizes = ValueNotifier(1);
    final theme = Theme.of(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(
                left: 15, right: 20, top: 20.0, bottom: 30),
            child: ValueListenableBuilder(
                valueListenable: selectedSizes,
                builder: (context, index, animation) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: AppStrings.setting,
                        style: theme.textTheme.displayMedium,
                      ),
                      10.y,
                      AppText(
                        text: AppStrings.size,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      20.y,
                      SelectSizesContainer(
                        selectedSizes: selectedSizes,
                        title: "US",
                        buttonIndex: 1,
                        onButtonSelected: (select) {
                          selectedSizes.value = 1;
                        },
                      ),
                      10.y,
                      SelectSizesContainer(
                        selectedSizes: selectedSizes,
                        title: "EU",
                        buttonIndex: 2,
                        onButtonSelected: (select) {
                          selectedSizes.value = 2;
                        },
                      ),
                      10.y,
                      SelectSizesContainer(
                        selectedSizes: selectedSizes,
                        title: "UK",
                        buttonIndex: 3,
                        onButtonSelected: (select) {
                          selectedSizes.value = 3;
                        },
                      ),
                      10.y,
                      10.y,
                    ],
                  );
                })),
      ),
    );
  }
}
