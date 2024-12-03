import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/currency_container_setting.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SelectCurrencySetting extends StatelessWidget {
  const SelectCurrencySetting({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selectedCurrency = ValueNotifier(1);
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
                valueListenable: selectedCurrency,
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
                        text: AppStrings.currency,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      20.y,
                      CurrencyContainerSetting(
                        selectedCurrency: selectedCurrency,
                        title: "\$ USD",
                        buttonIndex: 1,
                        onButtonSelected: (select) {
                          selectedCurrency.value = 1;
                        },
                      ),
                      10.y,
                      CurrencyContainerSetting(
                        selectedCurrency: selectedCurrency,
                        title: "€ EURO",
                        buttonIndex: 2,
                        onButtonSelected: (select) {
                          selectedCurrency.value = 2;
                        },
                      ),
                      10.y,
                      CurrencyContainerSetting(
                        selectedCurrency: selectedCurrency,
                        title: "₫ VND",
                        buttonIndex: 3,
                        onButtonSelected: (select) {
                          selectedCurrency.value = 3;
                        },
                      ),
                      10.y,
                      CurrencyContainerSetting(
                        selectedCurrency: selectedCurrency,
                        title: "₽ RUB",
                        buttonIndex: 4,
                        onButtonSelected: (select) {
                          selectedCurrency.value = 4;
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
