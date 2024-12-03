import 'package:tf_ecommerce/SRC/exports.dart';

class ContactInfoTile extends StatelessWidget {
  ContactInfoTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInputFieldOfPayment(
            titleOfTextField: AppStrings.emailAddress,
            hintText: AppStrings.emailAddress,
            controller: TextEditingController(),
          ),
          AppText(
            text: AppStrings.phoneNumber,
            style: theme.textTheme.titleSmall!.copyWith(fontSize: 14),
          ),
          PhoneNumber(
            hintText: '+92123456789',
            controller: TextEditingController(),
            radius: 10,
          ),
          10.y,
          20.y,
          SizedBox(
            height: 50,
            child: CommonButton(
                onTap: () {
                  context.back();
                },
                text: AppStrings.saveChanges),
          ),
          40.y,
        ],
      ),
    );
  }
}
