import 'package:tf_ecommerce/SRC/Presentation/Common/Tiles/error_container_icon.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class PaymentErrorDialog extends StatefulWidget {
  final String? title;
  final String? content;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const PaymentErrorDialog({
    super.key,
    this.title,
    this.content,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  State<PaymentErrorDialog> createState() => _PaymentErrorDialogState();
}

class _PaymentErrorDialogState extends State<PaymentErrorDialog> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    return Center(
      child: Stack(
        clipBehavior:
            Clip.none, // This allows the circle to overflow the container
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
                  30.y,
                  Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.15),
                        child: AppText(
                          text: AppStrings.paymentErrorMessage,
                          style: theme.textTheme.displayMedium,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      5.y,
                      AppText(
                        text: AppStrings.paymentErrorMessageSubTitle,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      20.y,
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                context.back();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: theme.cardColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text(
                                  'Tri Again',
                                  style: theme.textTheme.labelSmall!.copyWith(
                                      color: theme.scaffoldBackgroundColor),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: widget.onCancel,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: theme.canvasColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text(
                                  'Change',
                                  style: theme.textTheme.labelSmall!.copyWith(
                                      color: theme.scaffoldBackgroundColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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
