import 'package:tf_ecommerce/SRC/Presentation/Widgets/Auth/Screens/password_recovery_code_type.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          const BubbleOne(),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.2,
                ),
                const ProfileImage(),
                40.y,
                AppText(
                  text: AppStrings.hello,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                20.y,
                Text(
                  AppStrings.typeYourPassword,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                20.y,
                const SizedBox(width: 214, child: FourDigitCodeInput()),
                SizedBox(
                  height: size.height * 0.3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: AppStrings.notYou,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    5.x,
                    ArrowForward(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
