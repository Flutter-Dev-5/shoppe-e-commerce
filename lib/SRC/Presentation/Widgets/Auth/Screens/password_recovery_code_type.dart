import 'package:tf_ecommerce/SRC/Presentation/Widgets/Auth/Components/recovery_type_container.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final ValueNotifier<int> isSelect = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          const Bubble(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.2,
                ),
                const ProfileImage(),
                20.h,
                AppText(
                  text: AppStrings.passwordRecovery,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                20.h,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: AppText(
                    text: AppStrings.howWouldYouLikeToRestore,
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
                40.h,
                ValueListenableBuilder(
                    valueListenable: isSelect,
                    builder: (context, selected, child) {
                      return Column(
                        children: [
                          RecoveryTypeContainer(
                            text: AppStrings.sms,
                            isSelected: isSelect,
                            buttonIndex: 1,
                            onButtonSelected: (index) {
                              isSelect.value = index;
                            },
                          ),
                          20.h,
                          RecoveryTypeContainer(
                            text: AppStrings.emailAddress,
                            isSelected: isSelect,
                            buttonIndex: 2,
                            onButtonSelected: (index) {
                              isSelect.value = index;
                            },
                          ),
                        ],
                      );
                    }),
                60.h,
                CommonButton(
                  onTap: () {
                    context.to(const PasswordRecoveryCode());
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    //     builder: (context) => PasswordRecoveryCode()));
                  },
                  text: AppStrings.next,
                ),
                40.h,
                AppText(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Splashscreen()));
                  },
                  text: AppStrings.cancel,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
