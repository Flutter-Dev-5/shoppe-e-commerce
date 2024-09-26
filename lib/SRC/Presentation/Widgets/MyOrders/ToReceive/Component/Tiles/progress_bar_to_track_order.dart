import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double getProgress;
  final bool isSuccessFul;

  const CustomProgressBar(
      {super.key, required this.getProgress, required this.isSuccessFul});

  @override
  Widget build(BuildContext context) {
    final progress =
        getProgress >= 0.2 ? getProgress - 0.1 : getProgress - 0.05;
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 35,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 14,
              decoration: BoxDecoration(
                color: theme.shadowColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              left: 0,
              top: 2,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.shadowColor,
                ),
              ),
            ),
            Positioned(
              top: 2,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.shadowColor,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 2,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.shadowColor,
                ),
              ),
            ),
            Positioned(
              left: 4,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.scaffoldBackgroundColor),
                height: 22,
                width: 22,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: theme.primaryColorDark),
                  ),
                ),
              ),
            ),
            progress > 0.89
                ? Positioned(
                    right: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.scaffoldBackgroundColor),
                      height: 22,
                      width: 22,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: progress >= 0.9 && isSuccessFul
                                  ? Colors.green
                                  : progress >= 0.9
                                      ? theme.indicatorColor
                                      : theme.primaryColorDark),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
            progress >= 0.4 && progress < 0.4
                ? Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.scaffoldBackgroundColor),
                      height: 22,
                      width: 22,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: theme.primaryColorDark),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
            Positioned(
              left: 22,
              right: progress > 0.89 ? 21.5 : null,
              child: Container(
                decoration: BoxDecoration(
                  color: theme.scaffoldBackgroundColor,
                  borderRadius: progress > 0.9
                      ? null
                      : const BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          topRight: Radius.circular(5)),
                ),
                height: 10,
                width: size.width * progress,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.primaryColorDark,
                      gradient: progress >= 0.9
                          ? LinearGradient(colors: [
                              theme.primaryColorDark,
                              isSuccessFul ? Colors.green : theme.indicatorColor
                            ])
                          : null,
                      borderRadius: progress > 0.9
                          ? null
                          : const BorderRadius.only(
                              bottomRight: Radius.circular(5),
                              topRight: Radius.circular(5)),
                    ),
                  ),
                ),
              ),
            ),
            progress >= 0.4
                ? Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.scaffoldBackgroundColor),
                      height: 22,
                      width: 22,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: theme.primaryColorDark),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
