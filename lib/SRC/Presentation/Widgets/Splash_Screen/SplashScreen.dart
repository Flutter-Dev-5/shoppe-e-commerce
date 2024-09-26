import 'package:tf_ecommerce/SRC/exports.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ContainerIcon(),
              40.h,
              AppText(
                text: AppStrings.shoppe,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              20.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: AppText(
                  text: AppStrings.beautifulECommerce,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
              80.h,
              CommonButton(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()));
                },
                text: AppStrings.getStarted,
              ),
              30.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: AppStrings.alreadyHaveAccount,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  10.w,
                  ArrowForward(
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
