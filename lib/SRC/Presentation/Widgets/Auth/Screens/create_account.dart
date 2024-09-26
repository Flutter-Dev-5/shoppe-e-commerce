import 'package:tf_ecommerce/SRC/exports.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              const BubbleThree(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      100.h,
                      AppText(
                        text: AppStrings.createAccount,
                        style: Theme.of(context).textTheme.headlineLarge,
                        maxLines: 2,
                      ),
                      30.h,
                      const CameraContainer(),
                      40.h,
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
                        onTap: () {
                          context.pushReplacement(const SignInScreen());
                        },
                        text: AppStrings.done,
                      ),
                      30.h,
                      Center(
                          child: AppText(
                        text: AppStrings.cancel,
                        style: Theme.of(context).textTheme.bodyMedium,
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
