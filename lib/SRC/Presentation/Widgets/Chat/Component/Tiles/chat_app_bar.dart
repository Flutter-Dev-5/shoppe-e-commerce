import 'package:tf_ecommerce/SRC/exports.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Row(
        children: [
          const SizedBox(
            width: 40,
            height: 40,
            child: ProfileImage(
              image: emptyCart,
            ),
          ),
          5.x,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.y,
              AppText(
                text: AppStrings.chatBot,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: theme.primaryColorDark),
              ),
              AppText(
                text: AppStrings.customerService,
                style: theme.textTheme.bodyMedium!.copyWith(fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
