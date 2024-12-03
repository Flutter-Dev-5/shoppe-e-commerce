import 'package:tf_ecommerce/SRC/Presentation/Common/Backgrounds/bubble_2.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          const BubbleTwo(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.5,
                ),
                AppText(
                  text: AppStrings.login,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                10.y,
                Row(
                  children: [
                    AppText(
                      text: AppStrings.goodToSeeYouBack,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    5.x,
                    SvgPicture.asset(
                      heartIconSvg,
                      width: 15,
                      height: 15,
                    )
                  ],
                ),
                20.y,
                CustomTextField(
                  hintText: AppStrings.emailAddress,
                  controller: TextEditingController(),
                ),
                30.y,
                CommonButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PasswordScreen()));
                  },
                  text: AppStrings.next,
                ),
                20.y,
                Align(
                  alignment: Alignment.center,
                  child: AppText(
                      text: AppStrings.cancel,
                      style: Theme.of(context).textTheme.bodyMedium),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
