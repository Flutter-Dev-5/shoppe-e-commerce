import 'package:tf_ecommerce/SRC/exports.dart';

class ChatTextContainer extends StatelessWidget {
  final String text;
  final ValueNotifier<int> selectedIndex;
  final int indexOf;
  const ChatTextContainer(
      {super.key,
      required this.text,
      required this.selectedIndex,
      required this.indexOf});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, index, child) {
          return InkWell(
            onTap: () {
              selectedIndex.value = indexOf;
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: selectedIndex.value == indexOf
                      ? theme.primaryColorDark
                      : theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Theme.of(context).primaryColorDark,
                  )),
              child: selectedIndex.value == indexOf
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SelectedMarkContainer(
                            width: 20, height: 20, iconSize: 15),
                        10.x,
                        AppText(
                          text: text,
                          style: theme.textTheme.bodyLarge!.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  : AppText(
                      text: text,
                      style: theme.textTheme.bodyMedium!
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
            ),
          );
        });
  }
}
