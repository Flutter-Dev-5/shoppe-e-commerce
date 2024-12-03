import 'package:tf_ecommerce/SRC/exports.dart';

class SelectNumberOfItems extends StatelessWidget {
  SelectNumberOfItems({super.key});
  final ValueNotifier<int> count = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ValueListenableBuilder(
        valueListenable: count,
        builder: (context, countVal, child) {
          return Row(
            children: [
              InkWell(
                onTap: () {
                  if (count.value > 0) {
                    count.value = count.value - 1;
                  }
                },
                child: Container(
                  padding: const EdgeInsets.only(bottom: 3, left: 8, right: 8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.scaffoldBackgroundColor,
                      border: Border.all(color: theme.primaryColorDark)),
                  child: Center(
                    child: AppText(
                      text: "-",
                      style: theme.textTheme.displayMedium!
                          .copyWith(color: theme.primaryColorDark),
                    ),
                  ),
                ),
              ),
              5.x,
              Container(
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: theme.primaryColorDark.withOpacity(0.1)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Center(
                  child: AppText(
                    text: count.value.toString(),
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
              5.x,
              InkWell(
                onTap: () {
                  count.value = count.value + 1;
                },
                child: Container(
                  padding: const EdgeInsets.only(bottom: 3, left: 8, right: 8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.scaffoldBackgroundColor,
                      border: Border.all(color: theme.primaryColorDark)),
                  child: Center(
                    child: AppText(
                      text: "+",
                      style: theme.textTheme.displayMedium!
                          .copyWith(color: theme.primaryColorDark),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
