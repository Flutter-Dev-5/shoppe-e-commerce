import 'package:tf_ecommerce/SRC/Presentation/Common/Tiles/error_container_icon.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class PasswordLimitReachedDialog extends StatefulWidget {
  final String? title;
  final String? content;
  final VoidCallback onConfirm;
  final bool isPasswordLimit;

  const PasswordLimitReachedDialog({
    super.key,
    this.title,
    this.content,
    required this.onConfirm,
    this.isPasswordLimit = false,
  });

  @override
  State<PasswordLimitReachedDialog> createState() =>
      _PasswordLimitReachedDialogState();
}

class _PasswordLimitReachedDialogState
    extends State<PasswordLimitReachedDialog> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  30.h,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
                    child: SizedBox(
                      child: Center(
                        child: AppText(
                          maxLines: 3,
                          text: AppStrings.passwordLimitReached,
                          style: theme.textTheme.titleSmall!.copyWith(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  20.h,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        20.w,
                        Flexible(
                          child: ElevatedButton(
                            onPressed: widget.onConfirm,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.cardColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 10),
                              child: Center(
                                child: Text(
                                  AppStrings.okay,
                                  style: theme.textTheme.labelSmall!.copyWith(
                                      color: theme.scaffoldBackgroundColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -50,
            left: size.width / 2.5,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        color: Theme.of(context).cardColor.withOpacity(0.1),
                        blurRadius: 8),
                  ]),
              padding: const EdgeInsets.all(4),
              child: const Center(child: ErrorContainerIcon()),
            ),
          ),
        ],
      ),
    );
  }
}
