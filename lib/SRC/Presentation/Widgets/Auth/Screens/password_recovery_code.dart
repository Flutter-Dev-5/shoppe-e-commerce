import 'package:tf_ecommerce/SRC/exports.dart';

class PasswordRecoveryCode extends StatelessWidget {
  const PasswordRecoveryCode({super.key});

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
                  padding: const EdgeInsets.symmetric(horizontal: 43),
                  child: AppText(
                    text: AppStrings.enterFourDigitCode,
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
                20.h,
                AppText(
                  text: "+92*******0000",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                20.h,
                const FourDigitCodeInput(),
                SizedBox(
                  height: size.height * 0.16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: CommonButton(
                    onTap: () {
                      context.to(const SetupNewPassword());
                    },
                    text: AppStrings.sendAgain,
                    isRecoveryButton: true,
                  ),
                ),
                20.h,
                AppText(
                  onTap: () {
                    context.pushReplacement(const Splashscreen());
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