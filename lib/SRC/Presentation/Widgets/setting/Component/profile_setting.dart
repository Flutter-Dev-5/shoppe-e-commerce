import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/profile_text_field.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(
                left: 15, right: 20, top: 20.0, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: AppStrings.setting,
                  style: theme.textTheme.displayMedium,
                ),
                10.y,
                AppText(
                  text: AppStrings.yourProfile,
                  style: theme.textTheme.titleSmall!.copyWith(
                    fontSize: 16,
                  ),
                ),
                20.y,
                Stack(
                  children: [
                    Container(
                      width: 105,
                      height: 105,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: theme.scaffoldBackgroundColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 8,
                                blurRadius: 8,
                                color: theme.canvasColor)
                          ]),
                      child: const ClipOval(
                        child: DisplayImage(imageAddress: AppAssets.profileImage),
                      ),
                    ),
                    Positioned(
                        right: 3,
                        child: Container(
                            width: 30,
                            height: 30,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: theme.scaffoldBackgroundColor,
                            ),
                            child: EditButton(onTap: () {})))
                  ],
                ),
                20.y,
                ProfileTextField(
                  hintText: 'Name',
                  controller: TextEditingController(),
                ),
                10.y,
                ProfileTextField(
                  hintText: 'name@gmail.com',
                  controller: TextEditingController(),
                ),
                10.y,
                ProfileTextField(
                  isPassword: true,
                  hintText: '*********',
                  controller: TextEditingController(),
                ),
                Expanded(
                  child: Container(),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 40,
                    child: CommonButton(
                        borderRadius: 10,
                        onTap: () {},
                        text: AppStrings.saveChanges),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
