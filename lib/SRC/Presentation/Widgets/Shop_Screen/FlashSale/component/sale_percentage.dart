import 'package:tf_ecommerce/SRC/exports.dart';

final List<String> discountOptions = [
  " All  ",
  "10%",
  "20%",
  "30%",
  "40%",
  "50%",
];

class DiscountSelectorWidget extends StatelessWidget {
  const DiscountSelectorWidget({super.key});

  static final ValueNotifier<String> selectedDiscount =
      ValueNotifier(discountOptions[0]);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 140),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 40,
            width: size.width - 12,
            decoration: BoxDecoration(
                color: theme.canvasColor,
                borderRadius: BorderRadius.circular(8)),
          ),
          SizedBox(
            width: size.width - 12,
            child: ValueListenableBuilder(
                valueListenable: selectedDiscount,
                builder: (context, selectedSnap, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: discountOptions.map((val) {
                      return InkWell(
                        onTap: () => selectedDiscount.value = val,
                        child: DiscountButton(
                          label: val,
                          isSelected: selectedSnap == val,
                        ),
                      );
                    }).toList(),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class DiscountButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const DiscountButton(
      {super.key, required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return isSelected
        ? Stack(
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 12.0),
                  decoration: BoxDecoration(
                      color: theme.canvasColor,
                      borderRadius: BorderRadius.circular(15.0),
                      border:
                          Border.all(color: theme.primaryColorDark, width: 2)),
                  child: AppText(
                    text: label,
                    style: theme.textTheme.labelMedium!.copyWith(
                      color: theme.primaryColorDark,
                    ),
                  )),
              Positioned(
                  left: 7,
                  top: -15,
                  child: Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 40,
                    color: theme.primaryColorDark,
                  ))
            ],
          )
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: theme.canvasColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: AppText(
              text: label,
              style: theme.textTheme.labelMedium!.copyWith(fontSize: 13),
            ));
  }
}
