import 'package:tf_ecommerce/SRC/exports.dart';

class SuccessDialog extends StatefulWidget {
  final String? title;
  final String? content;
  final VoidCallback onConfirm;

  const SuccessDialog({
    super.key,
    this.title,
    this.content,
    required this.onConfirm,
  });

  @override
  State<SuccessDialog> createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<SuccessDialog> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                  30.h,
                  SizedBox(
                    child: Column(
                      children: [
                        AppText(
                          text: "${AppStrings.done}!",
                          style: theme.textTheme.displayMedium,
                        ),
                        5.h,
                        AppText(
                          text: AppStrings.yourCardHasBeenSuccessfullyCharged,
                          style: theme.textTheme.titleSmall!.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        20.h,
                        ElevatedButton(
                          onPressed: widget.onConfirm,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10),
                            child: Text(
                              AppStrings.trackMyOrder,
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ),
                        40.h
                      ],
                    ),
                  ),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.primaryColorDark,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.done,
                        color: theme.scaffoldBackgroundColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
