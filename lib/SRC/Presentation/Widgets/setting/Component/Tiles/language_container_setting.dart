import 'package:tf_ecommerce/SRC/exports.dart';

class LanguageContainerSetting extends StatelessWidget {
  final String title;
  final ValueNotifier<int> selectedLanguage;
  final int buttonIndex;
  final Function(int) onButtonSelected;
  const LanguageContainerSetting({
    super.key,
    required this.buttonIndex,
    required this.selectedLanguage,
    required this.title,
    required this.onButtonSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ValueListenableBuilder(
        valueListenable: selectedLanguage,
        builder: (context, index, animation) {
          return InkWell(
            onTap: () {
              onButtonSelected(buttonIndex);
              selectedLanguage.value = buttonIndex;
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: selectedLanguage.value == buttonIndex
                    ? theme.primaryColorDark.withOpacity(0.2)
                    : theme.canvasColor,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: title,
                      style: theme.textTheme.titleSmall!.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    selectedLanguage.value == buttonIndex
                        ? const SelectedMarkContainer(
                            width: 20, height: 20, iconSize: 15)
                        : Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: theme.scaffoldBackgroundColor,
                            ),
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: theme.indicatorColor.withOpacity(0.2),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
