import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/language_container_setting.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SelectLanguageSetting extends StatelessWidget {
  const SelectLanguageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selectedLanguage = ValueNotifier(1);
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
                valueListenable: selectedLanguage,
                builder: (context, index, animation) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      1.stB.y,
                      AppText(
                        text: AppStrings.setting,
                        style: theme.textTheme.displayMedium,
                      ),
                      10.y,
                      AppText(
                        text: AppStrings.language,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      20.y,
                      LanguageContainerSetting(
                        selectedLanguage: selectedLanguage,
                        title: "English",
                        buttonIndex: 1,
                        onButtonSelected: (select) {
                          selectedLanguage.value = 1;
                        },
                      ),
                      10.y,
                      LanguageContainerSetting(
                        selectedLanguage: selectedLanguage,
                        title: "Français",
                        buttonIndex: 2,
                        onButtonSelected: (select) {
                          selectedLanguage.value = 2;
                        },
                      ),
                      10.y,
                      LanguageContainerSetting(
                        selectedLanguage: selectedLanguage,
                        title: "Русский",
                        buttonIndex: 3,
                        onButtonSelected: (select) {
                          selectedLanguage.value = 3;
                        },
                      ),
                      10.y,
                      LanguageContainerSetting(
                        selectedLanguage: selectedLanguage,
                        title: "Tiếng Việt ",
                        buttonIndex: 4,
                        onButtonSelected: (select) {
                          selectedLanguage.value = 4;
                        },
                      ),
                      10.y,
                    ],
                  );
                })),
      ),
    );
  }
}
