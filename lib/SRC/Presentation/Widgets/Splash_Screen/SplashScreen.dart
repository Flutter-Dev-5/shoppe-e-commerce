import 'package:tf_ecommerce/SRC/exports.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              170.y,
              const ContainerIcon(),
              30.y,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: AppText(
                  text: AppStrings.goodServiceSiden1975,
                  style: theme.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
              150.y,
              CommonButton(
                backgroundColor: theme.primaryColorDark,
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()));
                },
                text: AppStrings.getStarted,

              ),
              30.y,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: AppStrings.alreadyHaveAccount,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  10.x,
                  ArrowForward(
                    color: LightColors.borderShadowColor,
                    onTap: () {
                      // context.pushReplacement(
                      //   const SignInScreen(),
                      // );
                      // context.to(SignInScreen());
                      // context.back();
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const SignInScreen()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
