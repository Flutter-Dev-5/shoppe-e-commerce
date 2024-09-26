import 'package:tf_ecommerce/SRC/exports.dart';

class RecoveryTypeContainer extends StatelessWidget {
  final String text;
  final ValueNotifier<int> isSelected;
  final int buttonIndex;
  final Function(int) onButtonSelected;
  const RecoveryTypeContainer(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.buttonIndex,
      required this.onButtonSelected});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isSelected,
        builder: (context, selected, child) {
          return InkWell(
            onTap: () {
              onButtonSelected(buttonIndex);
              isSelected.value = buttonIndex;
            },
            child: Container(
              width: 199,
              height: 40,
              decoration: BoxDecoration(
                  color: isSelected.value == buttonIndex
                      ? Theme.of(context).shadowColor
                      : Theme.of(context).unselectedWidgetColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    AppText(
                      text: text,
                      style: isSelected.value == buttonIndex
                          ? Theme.of(context).textTheme.bodySmall
                          : Theme.of(context).textTheme.labelMedium,
                    ),
                    isSelected.value == buttonIndex
                        ? Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).primaryColorDark),
                            child: const Icon(
                              Icons.done,
                              weight: 20,
                              size: 10,
                              color: Colors.white,
                            ),
                          )
                        : Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).unselectedWidgetColor,
                              ),
                            ),
                          )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
