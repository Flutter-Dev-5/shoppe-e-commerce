import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/profile_text_field.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/select_country.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

String countryName = "Choose your country";

class ShippingAddressSetting extends StatelessWidget {
  const ShippingAddressSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
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
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: false,
                  floating: true,
                  snap: true,
                  stretch: false,
                  leadingWidth: size.width,
                  collapsedHeight: 60,
                  expandedHeight: 60,
                  toolbarHeight: 60,
                  backgroundColor: theme.scaffoldBackgroundColor,
                  surfaceTintColor: Colors.transparent,
                  leading: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: AppStrings.setting,
                        style: theme.textTheme.displayMedium,
                      ),
                      10.h,
                      AppText(
                        text: AppStrings.shippingAddress,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.h,
                      AppText(
                        text: AppStrings.country,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: countryName,
                            style: theme.textTheme.displayMedium!.copyWith(
                              fontSize: 20,
                            ),
                          ),
                          ArrowForward(onTap: () {
                            context.to(const SelectCountry());
                          }),
                        ],
                      )
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.h,
                      AppText(
                        text: AppStrings.address1,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      ProfileTextField(
                          hintText: AppStrings.required,
                          controller: TextEditingController()),
                      20.h,
                      AppText(
                        text: AppStrings.townOrCity,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      ProfileTextField(
                          hintText: AppStrings.required,
                          controller: TextEditingController()),
                      20.h,
                      AppText(
                        text: AppStrings.postCode,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      ProfileTextField(
                          hintText: AppStrings.required,
                          controller: TextEditingController()),
                      20.h,
                      AppText(
                        text: AppStrings.phoneNumber,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      ProfileTextField(
                          hintText: AppStrings.required,
                          controller: TextEditingController()),
                      40.h,
                      SizedBox(
                        height: 40,
                        child: CommonButton(
                            borderRadius: 10,
                            onTap: () {},
                            text: AppStrings.saveChanges),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
