import 'package:tf_ecommerce/SRC/Presentation/DialougBox/password_limit_reached.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SetupNewPassword extends StatelessWidget {
  const SetupNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          // const Bubble(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.2,
                ),
                const ProfileImage(),
                20.y,
                AppText(
                  text: AppStrings.setUpNewPassword,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                20.y,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AppText(
                    text: AppStrings.setUpTextMessage,
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
                40.y,
                CustomTextField(
                  isNewPassword: true,
                  hintText: AppStrings.newPassword,
                  controller: TextEditingController(),
                ),
                20.y,
                CustomTextField(
                  isNewPassword: true,
                  hintText: AppStrings.repeatPassword,
                  controller: TextEditingController(),
                ),
                SizedBox(
                  height: size.height * 0.13,
                ),
                CommonButton(
                    onTap: () {
                      context.pushReplacement(BottomNavigation());
                    },
                    text: AppStrings.save),
                20.y,
                SizedBox(
                  width: 80,
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierColor: Colors.black.withOpacity(0.8),
                        builder: (context) {
                          return PasswordLimitReachedDialog(
                            onConfirm: () {
                              context.back();
                            },
                          );
                        },
                      );
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: AppText(
                          text: AppStrings.cancel,
                          style: Theme.of(context).textTheme.bodyMedium),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
