import 'package:tf_ecommerce/SRC/exports.dart';

class UserQuestionsBottomSheet {
  static final ValueNotifier<int> selectedIndex = ValueNotifier(-1);
  static void whatIsYourIssueBottomSheet(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    CustomNewBottomSheet.customBottomSheet(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ValueListenableBuilder(
              valueListenable: selectedIndex,
              builder: (context, index, child) {
                return Column(
                  children: [
                    10.h,
                    SizedBox(
                      height: size.height * 0.35,
                      child: ListView.builder(
                          itemCount: UserSelectedData.whatIsYourIssue.length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ChatTextContainer(
                                  text: UserSelectedData.whatIsYourIssue[index],
                                  selectedIndex: selectedIndex,
                                  indexOf: index,
                                ),
                                5.h,
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Flexible(
                            child: CommonButton(
                              onTap: () {
                                UserSelectedData.userSelectedData.add(
                                    UserSelectedData
                                        .whatIsYourIssue[selectedIndex.value]);
                                context.back();
                                orderIssueBottomSheet(context);
                              },
                              text: AppStrings.next,
                              borderRadius: 10,
                            ),
                          ),
                          10.w,
                          ExitButtonContainer(
                            onTap: () {
                              context.back();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
        AppStrings.whatIsYourIssue,
        context,
        0.6,
        false);
  }

  static void orderIssueBottomSheet(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    selectedIndex.value = -1;
    CustomNewBottomSheet.customBottomSheet(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ValueListenableBuilder(
              valueListenable: selectedIndex,
              builder: (context, index, child) {
                return Column(
                  children: [
                    10.h,
                    SizedBox(
                      height: size.height * 0.35,
                      child: ListView.builder(
                          itemCount: UserSelectedData.orderIssueData.length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ChatTextContainer(
                                  text: UserSelectedData.orderIssueData[index],
                                  selectedIndex: selectedIndex,
                                  indexOf: index,
                                ),
                                5.h,
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Flexible(
                            child: CommonButton(
                              onTap: () {
                                UserSelectedData.userSelectedData.add(
                                    UserSelectedData
                                        .orderIssueData[selectedIndex.value]);
                                context.back();
                                commonOrderIssueBottomSheet(
                                  context,
                                  UserSelectedData.whatIsYourIssue,
                                );
                              },
                              text: AppStrings.next,
                              borderRadius: 10,
                            ),
                          ),
                          10.w,
                          ExitButtonContainer(
                            onTap: () {
                              context.back();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
        AppStrings.orderIssue,
        context,
        0.6,
        false);
  }

  static void commonOrderIssueBottomSheet(
      BuildContext context, List<dynamic> issueData) {
    final Size size = MediaQuery.sizeOf(context);
    selectedIndex.value = -1;
    CustomNewBottomSheet.customBottomSheet(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ValueListenableBuilder(
              valueListenable: selectedIndex,
              builder: (context, index, child) {
                return Column(
                  children: [
                    10.h,
                    SizedBox(
                      height: size.height * 0.35,
                      child: ListView.builder(
                          itemCount: issueData.length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ChatTextContainer(
                                  text: issueData[index],
                                  selectedIndex: selectedIndex,
                                  indexOf: index,
                                ),
                                5.h,
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Flexible(
                            child: CommonButton(
                              onTap: () {
                                UserSelectedData.userSelectedData
                                    .add(Container());
                                context.back();
                              },
                              text: AppStrings.next,
                              borderRadius: 10,
                            ),
                          ),
                          10.w,
                          ExitButtonContainer(
                            onTap: () {
                              context.back();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
        AppStrings.orderIssue,
        context,
        0.6,
        false);
  }

  static void getImage(BuildContext context, VoidCallback onTap) {
    final Size size = MediaQuery.sizeOf(context);
    CustomNewBottomSheet.customBottomSheet(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.image,
                    size: 100,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    size: 100,
                  )),
            ],
          ),
        ),
        "Get Image",
        context,
        0.3,
        false);
  }
}
