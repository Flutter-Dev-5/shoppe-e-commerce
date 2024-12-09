import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/Tiles/profile_text_field.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SelectPaymentMethodCard extends StatelessWidget {
  SelectPaymentMethodCard({super.key});
  final ValueNotifier<int> count = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Expanded(
        child: ValueListenableBuilder(
            valueListenable: count,
            builder: (context, cardCount, child) {
              return ListView.builder(
                  itemCount: count.value,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        InkWell(
                          onTap: () {
                            CustomNewBottomSheet.customBottomSheet(
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        text: AppStrings.cardHolder,
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      ProfileTextField(
                                          hintText: AppStrings.cardNumber,
                                          controller: TextEditingController()),
                                      20.y,
                                      AppText(
                                        text: AppStrings.cardNumber,
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      ProfileTextField(
                                          hintText: AppStrings.required,
                                          controller: TextEditingController()),
                                      20.y,
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AppText(
                                                  text: AppStrings.valid,
                                                  style: theme
                                                      .textTheme.titleSmall!
                                                      .copyWith(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                ProfileTextField(
                                                    hintText:
                                                        AppStrings.required,
                                                    controller:
                                                        TextEditingController()),
                                              ],
                                            ),
                                          ),
                                          5.x,
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AppText(
                                                  text: AppStrings.cVV,
                                                  style: theme
                                                      .textTheme.titleSmall!
                                                      .copyWith(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                ProfileTextField(
                                                    hintText:
                                                        AppStrings.required,
                                                    controller:
                                                        TextEditingController()),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      20.y,
                                      SizedBox(
                                          height: 40,
                                          child: CommonButton(
                                            onTap: () {
                                              context.back();
                                            },
                                            text: AppStrings.saveChanges,
                                            borderRadius: 10,
                                          ))
                                    ],
                                  ),
                                ),
                                AppStrings.editCard,
                                context,
                                0.6,
                                false);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: DisplayImage(
                              imageAddress: AppAssets.atmCardImage,
                              imageWidth: size.width - 100,
                            ),
                          ),
                        ),
                        10.x,
                        index + 1 == count.value
                            ? InkWell(
                                onTap: () {
                                  CustomNewBottomSheet.customBottomSheet(
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppText(
                                              text: AppStrings.cardHolder,
                                              style: theme.textTheme.titleSmall!
                                                  .copyWith(
                                                fontSize: 12,
                                              ),
                                            ),
                                            ProfileTextField(
                                                hintText: AppStrings.cardNumber,
                                                controller:
                                                    TextEditingController()),
                                            20.y,
                                            AppText(
                                              text: AppStrings.cardNumber,
                                              style: theme.textTheme.titleSmall!
                                                  .copyWith(
                                                fontSize: 12,
                                              ),
                                            ),
                                            ProfileTextField(
                                                hintText: AppStrings.required,
                                                controller:
                                                    TextEditingController()),
                                            20.y,
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      AppText(
                                                        text: AppStrings.valid,
                                                        style: theme.textTheme
                                                            .titleSmall!
                                                            .copyWith(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      ProfileTextField(
                                                          hintText: AppStrings
                                                              .required,
                                                          controller:
                                                              TextEditingController()),
                                                    ],
                                                  ),
                                                ),
                                                5.x,
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      AppText(
                                                        text: AppStrings.cVV,
                                                        style: theme.textTheme
                                                            .titleSmall!
                                                            .copyWith(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      ProfileTextField(
                                                          hintText: AppStrings
                                                              .required,
                                                          controller:
                                                              TextEditingController()),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            20.y,
                                            SizedBox(
                                                height: 40,
                                                child: CommonButton(
                                                  onTap: () {
                                                    count.value =
                                                        count.value + 1;
                                                    context.back();
                                                  },
                                                  text: AppStrings.saveChanges,
                                                  borderRadius: 10,
                                                ))
                                          ],
                                        ),
                                      ),
                                      AppStrings.addCard,
                                      context,
                                      0.6,
                                      false);

                                  // count.value = count.value + 1;
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Container(
                                    width: 50,
                                    height: size.height,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: theme.primaryColorDark),
                                    child: Icon(
                                      Icons.add,
                                      color: theme.scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                      ],
                    );
                  });
            }));
  }
}
