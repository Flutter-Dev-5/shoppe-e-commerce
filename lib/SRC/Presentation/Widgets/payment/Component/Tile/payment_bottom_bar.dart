import 'package:tf_ecommerce/SRC/Presentation/DialougBox/success_dialog.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class PaymentBottomBar extends StatelessWidget {
  const PaymentBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return Flexible(
      child: Container(
        color: theme.canvasColor,
        width: size.width,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: Row(
                  children: [
                    AppText(
                      text: AppStrings.total,
                      style: theme.textTheme.displayMedium,
                    ),
                    5.w,
                    AppText(
                      text: "\$3400",
                      style: theme.textTheme.titleMedium,
                    )
                  ],
                ),
              ),
              Flexible(
                child: SizedBox(
                    height: 40,
                    child: CommonButton(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierColor: Colors.black.withOpacity(0.8),
                          builder: (context) {
                            return SuccessDialog(
                              onConfirm: () {
                                context.back();
                              },
                            );
                          },
                        );
                      },
                      text: AppStrings.pay,
                      isLimitReached: true,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
