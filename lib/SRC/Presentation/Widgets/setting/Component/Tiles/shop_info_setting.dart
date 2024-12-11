import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/select_country.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/select_currency_setting.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/select_sizes_setting.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ShopInfo extends StatelessWidget {
  const ShopInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.y,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: AppText(
            text: AppStrings.shop,
            style: theme.textTheme.displayMedium,
          ),
        ),
        10.y,
        ListTile(
          onTap: () {
            context.to(const SelectCountry());
          },
          title: AppText(
            text: AppStrings.country,
            style: theme.textTheme.displaySmall!
                .copyWith(fontWeight: FontWeight.w400),
          ),
          trailing: SizedBox(
            width: 88,
            child: Row(
              children: [
                AppText(
                  text: "Norway",
                  style: theme.textTheme.titleSmall!.copyWith(fontSize: 13),
                ),
                10.x,
                const Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
        Divider(
          color: theme.canvasColor,
        ),
        ListTile(
          onTap: () {
            context.to(const SelectCurrencySetting());
          },
          title: AppText(
            text: AppStrings.currency,
            style: theme.textTheme.displaySmall!
                .copyWith(fontWeight: FontWeight.w400),
          ),
          trailing: SizedBox(
            width: 75,
            child: Row(
              children: [
                AppText(
                  text: "\$ USD",
                  style: theme.textTheme.titleSmall!.copyWith(fontSize: 13),
                ),
                10.x,
                const Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
        Divider(
          color: theme.canvasColor,
        ),
        ListTile(
          onTap: () {
            context.to(const SelectSizesSetting());
          },
          title: AppText(
            text: AppStrings.size,
            style: theme.textTheme.displaySmall!
                .copyWith(fontWeight: FontWeight.w400),
          ),
          trailing: SizedBox(
            width: 54,
            child: Row(
              children: [
                AppText(
                  text: "UK",
                  style: theme.textTheme.titleSmall!.copyWith(fontSize: 13),
                ),
                10.x,
                const Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
        Divider(
          color: theme.canvasColor,
        ),
        ListTile(
          title: AppText(
            text: AppStrings.termsAndConditions,
            style: theme.textTheme.displaySmall!
                .copyWith(fontWeight: FontWeight.w400),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        Divider(
          color: theme.canvasColor,
        ),
      ],
    );
  }
}
