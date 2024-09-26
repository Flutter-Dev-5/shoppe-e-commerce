import 'package:tf_ecommerce/SRC/exports.dart';

class CustomNewBottomSheet {
  static void customBottomSheet(
    Widget customWidget,
    String bottomSheetTitle,
    BuildContext context,
    double size,
    bool isVoucher,
  ) {
    final theme = Theme.of(context);
    showModalBottomSheet<void>(
      scrollControlDisabledMaxHeightRatio: size,
      context: context,
      sheetAnimationStyle: AnimationStyle(
        duration: const Duration(seconds: 1),
        reverseDuration: const Duration(microseconds: 800),
      ),
      builder: (BuildContext context) {
        return SizedBox.expand(
          child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: theme.primaryColorDark.withOpacity(0.05),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: AppText(
                          text: bottomSheetTitle,
                          style: theme.textTheme.displayMedium,
                        ),
                      ),
                    ),
                  ),
                  10.h,
                  isVoucher
                      ? customWidget
                      : Expanded(
                          child: SingleChildScrollView(
                          child: customWidget,
                        )),
                ],
              )),
        );
      },
    );
  }
}
