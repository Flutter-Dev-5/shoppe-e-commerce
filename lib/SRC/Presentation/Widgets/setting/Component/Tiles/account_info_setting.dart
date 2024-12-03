import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/select_language_setting.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class AccountInfoSetting extends StatelessWidget {
  const AccountInfoSetting({super.key});

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
            text: AppStrings.account,
            style: theme.textTheme.displayMedium,
          ),
        ),
        10.y,
        ListTile(
          onTap: () {
            context.to(const SelectLanguageSetting());
          },
          title: AppText(
            text: AppStrings.language,
            style: theme.textTheme.displaySmall!
                .copyWith(fontWeight: FontWeight.w400),
          ),
          trailing: SizedBox(
            width: 80,
            child: Row(
              children: [
                AppText(
                  text: "English",
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
            text: AppStrings.aboutSlada,
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
