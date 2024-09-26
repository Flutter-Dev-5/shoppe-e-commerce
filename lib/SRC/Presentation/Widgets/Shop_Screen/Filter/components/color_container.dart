import 'package:tf_ecommerce/SRC/exports.dart';

class ColorContainer extends StatelessWidget {
  final bool isSelected;
  final Color color;
  const ColorContainer(
      {super.key, required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return isSelected
        ? Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.primaryColorDark,
                ),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 0,
                            color: Theme.of(context).cardColor.withOpacity(0.1),
                            blurRadius: 8),
                      ]),
                  child: Container(
                    decoration:
                        BoxDecoration(color: color, shape: BoxShape.circle),
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              Positioned(
                  top: 2,
                  right: 5,
                  child: Container(
                    width: 15,
                    height: 15,
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.primaryColorDark,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.done,
                      color: theme.scaffoldBackgroundColor,
                      size: 10,
                    )),
                  ))
            ],
          )
        : Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 0,
                      color: Theme.of(context).cardColor.withOpacity(0.1),
                      blurRadius: 8),
                ]),
            child: Container(
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              width: 40,
              height: 40,
            ),
          );
  }
}
