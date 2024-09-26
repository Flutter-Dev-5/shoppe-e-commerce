import 'package:tf_ecommerce/SRC/Presentation/Widgets/payment/component/Tile/text_input_field.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class EditAddressTile extends StatelessWidget {
  EditAddressTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: AppStrings.country,
            style: theme.textTheme.titleSmall!.copyWith(fontSize: 14),
          ),
          TextField(
            style: theme.textTheme.labelSmall,
            decoration: InputDecoration(
              fillColor: theme.scaffoldBackgroundColor,
              focusColor: theme.scaffoldBackgroundColor,
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: "Pakistan",
              hintStyle: theme.textTheme.labelMedium!.copyWith(
                color: theme.cardColor.withOpacity(0.2),
              ),
              suffixIcon: ArrowForward(
                onTap: () {},
                color: theme.cardColor.withOpacity(0.2),
              ),
            ),
          ),
          TextInputFieldOfPayment(
            titleOfTextField: AppStrings.address1,
            hintText: AppStrings.address,
            controller: TextEditingController(),
          ),
          10.h,
          TextInputFieldOfPayment(
            titleOfTextField: AppStrings.townOrCity,
            hintText: AppStrings.countryWithCode,
            controller: TextEditingController(),
          ),
          10.h,
          TextInputFieldOfPayment(
            titleOfTextField: AppStrings.postCode,
            hintText: "7000",
            controller: TextEditingController(),
          ),
          20.h,
          SizedBox(
            height: 50,
            child: CommonButton(
                onTap: () {
                  context.back();
                },
                text: AppStrings.saveChanges),
          ),
          40.h,
        ],
      ),
    );
  }
}
