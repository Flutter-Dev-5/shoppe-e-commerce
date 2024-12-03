import 'package:tf_ecommerce/SRC/Presentation/Widgets/Chat/chat_screen.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/my_activity.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/profile_setting.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/setting.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class CustomAppBar extends StatelessWidget {
  final bool isHomePage;
  final bool isMyActivity;
  final String text;
  final String subTitle;
  const CustomAppBar({
    super.key,
    required this.isHomePage,
    this.text = AppStrings.toRecieve,
    this.subTitle = AppStrings.myOrders,
    this.isMyActivity = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ColoredBox(
      color: theme.scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                context.to(const ProfileSetting());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 0,
                          color: Theme.of(context).cardColor.withOpacity(0.1),
                          blurRadius: 8),
                    ]),
                child: const Padding(
                  padding: EdgeInsets.all(4),
                  child: ClipOval(
                      child: DisplayImage(
                          imageAddress: profileImage,
                          imageHeight: 40,
                          imageWidth: 40)),
                ),
              ),
            ),
            10.x,
            isMyActivity
                ? AppText(
                    text: text,
                    style: Theme.of(context).textTheme.displayMedium,
                  )
                : Flexible(
                    child: isHomePage
                        ? InkWell(
                            onTap: () {
                              context.to(const MyActivity());
                            },
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColorDark,
                                  borderRadius: BorderRadius.circular(50)),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Center(
                                  child: AppText(
                                text: AppStrings.myActivity,
                                style: Theme.of(context).textTheme.bodyLarge,
                              )),
                            ),
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: text,
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                              AppText(
                                text: subTitle,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontSize: 14),
                              )
                            ],
                          ),
                  ),
            30.x,
            Flexible(
                child: SizedBox(
              height: 37,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.to(
                        const FilterProduct(),
                      );
                    },
                    child: const SmallIconContainer(
                      iconPath: scannerIcon,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.to(const ChatScreen());
                    },
                    child: const SmallIconContainer(
                      isNotification: true,
                      iconPath: drawerIcon,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.to(const Setting());
                    },
                    child: const SmallIconContainer(
                      iconPath: settingIcon,
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
