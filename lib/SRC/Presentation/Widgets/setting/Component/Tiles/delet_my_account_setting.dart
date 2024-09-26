import 'package:tf_ecommerce/SRC/Presentation/DialougBox/delete_dialoug_box.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class DeleteMyAccountSetting extends StatelessWidget {
  const DeleteMyAccountSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              barrierColor: Colors.black.withOpacity(0.8),
              builder: (context) {
                return DeleteDialogBox(
                  onConfirm: () {
                    context.back();
                  },
                  onCancel: () {
                    context.back();
                  },
                );
              },
            );
          },
          child: ListTile(
            leading: AppText(
              text: AppStrings.deleteMyAccount,
              style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.indicatorColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          )),
    );
  }
}
