import 'package:tf_ecommerce/SRC/exports.dart';

class PaymentLoadingDialog extends StatefulWidget {
  final String? title;
  final String? content;
  final bool isLoadingData;

  const PaymentLoadingDialog({
    super.key,
    this.title,
    this.content,
    this.isLoadingData = false,
  });

  @override
  State<PaymentLoadingDialog> createState() => _PaymentLoadingDialogState();
}

class _PaymentLoadingDialogState extends State<PaymentLoadingDialog> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(const Duration(seconds: 2), () {
    //   setState(() {
    //     widget.isLoadingData = false;
    //     widget.isError = true;
    //   });
    // });
  }

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
                  widget.isLoadingData
                      ? Container()
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Text(
                            widget.content ?? "",
                            style: Theme.of(context).textTheme.labelSmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                  30.y,
                  if (widget.isLoadingData == true)
                    Column(
                      children: [
                        AppText(
                          text: AppStrings.paymentInProgress,
                          style: theme.textTheme.displayMedium,
                        ),
                        5.y,
                        AppText(
                          text: AppStrings.pleaseWaitAFewMoments,
                          style: theme.textTheme.titleSmall!.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        40.y
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
              child: Center(
                  child: widget.isLoadingData
                      ? SizedBox(
                          height: 50,
                          width: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(
                              color: theme.primaryColorDark,
                            ),
                          ))
                      : const SizedBox.shrink()),
            ),
          ),
        ],
      ),
    );
  }
}
