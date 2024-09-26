import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/payment_method_setting.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/profile_setting.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/shipping_address_setting.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.h,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: AppText(
            text: AppStrings.personal,
            style: theme.textTheme.displayMedium,
          ),
        ),
        20.h,
        ListTile(
          onTap: () {
            context.to(const ProfileSetting());
          },
          title: AppText(
            text: AppStrings.profile,
            style: theme.textTheme.displaySmall!
                .copyWith(fontWeight: FontWeight.w400),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        Divider(
          color: theme.canvasColor,
        ),
        ListTile(
          onTap: () {
            context.to(const ShippingAddressSetting());
          },
          title: AppText(
            text: AppStrings.shippingAddress,
            style: theme.textTheme.displaySmall!.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        Divider(
          color: theme.canvasColor,
        ),
        ListTile(
          onTap: () {
            context.to(const PaymentMethodSetting());
          },
          title: AppText(
            text: AppStrings.paymentMethod,
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
