import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/about_slada_app.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/account_info_setting.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/delet_my_account_setting.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/personal_info_setting.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/shop_info_setting.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              floating: true,
              stretch: false,
              snap: true,
              toolbarHeight: 60,
              expandedHeight: 60,
              surfaceTintColor: Colors.transparent,
              backgroundColor: theme.scaffoldBackgroundColor,
              collapsedHeight: 60,
              leading: SizedBox(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 20, top: 20.0),
                  child: AppText(
                    text: AppStrings.setting,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
              ),
              leadingWidth: size.width,
            ),
            const SliverToBoxAdapter(
              child: PersonalInfo(),
            ),
            const SliverToBoxAdapter(
              child: ShopInfo(),
            ),
            const SliverToBoxAdapter(
              child: AccountInfoSetting(),
            ),
            const SliverToBoxAdapter(
              child: DeleteMyAccountSetting(),
            ),
            const SliverToBoxAdapter(
              child: AboutSladaApp(),
            )
          ],
        ),
      ),
    );
  }
}
