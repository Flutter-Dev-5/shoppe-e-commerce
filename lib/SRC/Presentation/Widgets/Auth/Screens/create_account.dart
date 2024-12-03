import 'package:tf_ecommerce/SRC/exports.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              // const BubbleThree(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      80.h,
                      AppText(
                        text: AppStrings.createAccount,
                        style: theme.textTheme.headlineLarge,
                        maxLines: 2,
                      ),
                      // 30.h,
                      // const CameraContainer(),
                      80.h,
                      CustomTextField(
                        hintText: AppStrings.emailAddress,
                        controller: TextEditingController(),
                      ),
                      10.h,
                      CustomTextField(
                        hintText: AppStrings.password,
                        isPassword: true,
                        controller: TextEditingController(),
                      ),
                      10.h,
                      PhoneNumber(
                        hintText: AppStrings.phoneNumber,
                        controller: TextEditingController(),
                      ),
                      20.h,
                      CommonButton(
                        // color: ,
                        onTap: () {
                          context.pushReplacement(const SignInScreen());
                        },
                        text: AppStrings.done,
                      ),
                      10.h,
                      Center(
                          child: AppText(
                        text: AppStrings.or,
                        style: theme.textTheme.displayMedium,
                      )),
                      10.h,

                      CommonButton(
                        color: theme.indicatorColor,
                        onTap: () {
                          context.pushReplacement(const SignInScreen());
                        },
                        text: "Register deg Med",
                      ),
                      10.h,
                      Center(
                          child: AppText(
                        text: AppStrings.cancel,
                        style: theme.textTheme.bodyMedium,
                      ))
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
