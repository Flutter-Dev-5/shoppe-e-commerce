import 'package:tf_ecommerce/SRC/exports.dart';

class SelectPriceRange extends StatelessWidget {
  final double minAmount;
  final double maxAmount;
  const SelectPriceRange(
      {super.key, required this.minAmount, required this.maxAmount});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<RangeValues> rangeValues =
        ValueNotifier<RangeValues>(RangeValues(minAmount, maxAmount));

    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              text: AppStrings.price,
              style: theme.textTheme.displayMedium,
            ),
            ValueListenableBuilder(
                valueListenable: rangeValues,
                builder: (context, rangeValue, child) {
                  return Row(
                    children: [
                      AppText(
                        text: "\$ ${rangeValue.start.round()}",
                        style: theme.textTheme.labelSmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      AppText(
                        text: "-",
                        style: theme.textTheme.labelSmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      AppText(
                        text: "\$ ${rangeValue.end.round()}",
                        style: theme.textTheme.labelSmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  );
                })
          ],
        ),
        ValueListenableBuilder(
            valueListenable: rangeValues,
            builder: (context, RangeValues index, child) {
              return RangeSlider(
                activeColor: theme.primaryColorDark,
                inactiveColor: theme.primaryColorDark.withOpacity(0.1),
                values: index,
                max: 100,
                // divisions: 5,
                labels: RangeLabels(
                  index.start.round().toString(),
                  index.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  rangeValues.value = values;
                },
              );
            })
      ],
    );
  }
}
