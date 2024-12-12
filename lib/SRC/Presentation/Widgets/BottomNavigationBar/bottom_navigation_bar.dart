import 'package:tf_ecommerce/SRC/Presentation/Common/quick_image.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/Cart/cart_items.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/WishList/wish_list.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/setting.dart';
import 'package:tf_ecommerce/SRC/exports.dart';
//
// class BottomNavigation extends StatelessWidget {
//   BottomNavigation({super.key});
//
//   final List<Widget> _pages = [
//     const Dashboard(),
//     const WishList(),
//     const FlashSaleDetail(
//       isDiscountAvailable: true,
//     ),
//     CartItems(),
//     const Setting(),
//   ];
//
//   final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ValueListenableBuilder<int>(
//         valueListenable: _currentIndexNotifier,
//         builder: (context, index, _) {
//           return _pages[index];
//         },
//       ),
//       bottomNavigationBar: ValueListenableBuilder<int>(
//         valueListenable: _currentIndexNotifier,
//         builder: (context, index, _) {
//           return BottomNavigationBar(
//             currentIndex: index,
//             onTap: (newIndex) {
//               _currentIndexNotifier.value = newIndex;
//             },
//             selectedItemColor: Theme.of(context).cardColor,
//             unselectedItemColor: Theme.of(context).primaryColorDark,
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             items: [
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   AppAssets.homeIconSvg,
//                   color: index == 0
//                       ? Theme.of(context).cardColor
//                       : Theme.of(context).primaryColorDark,
//                 ),
//                 label: "Home",
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   AppAssets.favIcon,
//                   color: index == 1
//                       ? Theme.of(context).cardColor
//                       : Theme.of(context).primaryColorDark,
//                 ),
//                 label: "About",
//               ),
//               BottomNavigationBarItem(
//                 icon: Image.asset(
//                   AppAssets.categoriesPNG,
//                   color: index == 2
//                       ? Theme.of(context).cardColor
//                       : Theme.of(context).primaryColorDark,
//                   width: 23,
//                   height: 23,
//                 ),
//                 label: "Product",
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   AppAssets.cartIcon,
//                   color: index == 3
//                       ? Theme.of(context).cardColor
//                       : Theme.of(context).primaryColorDark,
//                 ),
//                 label: "Contact",
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(
//                   AppAssets.profileIcon,
//                   color: index == 4
//                       ? Theme.of(context).cardColor
//                       : Theme.of(context).primaryColorDark,
//                 ),
//                 label: "Settings",
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final List<Widget> _pages = [
    const Dashboard(),
    const WishList(),
    const FlashSaleDetail(isDiscountAvailable: true),
    CartItems(),
    const Setting(),
  ];

  final PageController _pageController = PageController();
  final ValueNotifier _currentIndex = ValueNotifier<int>(0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    _currentIndex.value = index;
  }

  void _onBottomNavTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300), // Animation speed
      curve: Curves.easeInOut, // Animation curve
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(), // Disable swipe gesture
        onPageChanged: _onPageChanged,
        children: _pages,
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: _currentIndex,
        builder: (context, snapshot, child) {
          return BottomNavigationBar(
            currentIndex: snapshot,
            onTap: _onBottomNavTapped,
            selectedItemColor: Theme.of(context).cardColor,
            unselectedItemColor: Theme.of(context).primaryColorDark,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    QuickImage(
                      url: AppAssets.homeIconSvg,
                      color: snapshot == 0
                          ? Theme.of(context).cardColor
                          : Theme.of(context).primaryColorDark,
                      width: 22.w,
                      height: 30.h,
                    ),
                    // SvgPicture.asset(
                    //   AppAssets.homeIconSvg,
                    //   color: snapshot == 0
                    //       ? Theme.of(context).cardColor
                    //       : Theme.of(context).primaryColorDark,
                    // ),
                    5.y,
                    snapshot == 0
                        ? Container(
                            width: 12.w,
                            height: 4.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Theme.of(context).cardColor,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    QuickImage(
                      url: AppAssets.favIcon,
                      color: snapshot == 1
                          ? Theme.of(context).cardColor
                          : Theme.of(context).primaryColorDark,
                      width: 27.w,
                      height: 30.h,
                    ),
                    // SvgPicture.asset(
                    //   AppAssets.favIcon,
                    //   color: snapshot == 1
                    //       ? Theme.of(context).cardColor
                    //       : Theme.of(context).primaryColorDark,
                    // ),
                    5.y,
                    snapshot == 1
                        ? Container(
                            width: 12.w,
                            height: 4.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Theme.of(context).cardColor,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                label: "About",
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    QuickImage(
                      url: AppAssets.categoriesPNG,
                      width: 22.w,
                      height: 35.h,
                      color: snapshot == 2
                          ? Theme.of(context).cardColor
                          : Theme.of(context).primaryColorDark,
                    ),
                    // Image.asset(
                    //   AppAssets.categoriesPNG,
                    //   color: snapshot == 2
                    //       ? Theme.of(context).cardColor
                    //       : Theme.of(context).primaryColorDark,
                    //   width: 23,
                    //   height: 23,
                    // ),
                    5.y,
                    snapshot == 2
                        ? Container(
                            width: 12.w,
                            height: 4.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Theme.of(context).cardColor,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                label: "Product",
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    QuickImage(
                      url: AppAssets.cartIcon,
                      color: snapshot == 3
                          ? Theme.of(context).cardColor
                          : Theme.of(context).primaryColorDark,
                      width: 22.w,
                      height: 35.h,
                    ),
                    // SvgPicture.asset(
                    //   AppAssets.cartIcon,
                    //   color: snapshot == 3
                    //       ? Theme.of(context).cardColor
                    //       : Theme.of(context).primaryColorDark,
                    // ),
                    5.y,
                    snapshot == 3
                        ? Container(
                            width: 12.w,
                            height: 4.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Theme.of(context).cardColor,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                label: "Contact",
              ),
              BottomNavigationBarItem(
                icon: QuickImage(
                  url: AppAssets.profileIcon,
                  color: snapshot == 4
                      ? Theme.of(context).cardColor
                      : Theme.of(context).primaryColorDark,
                  width: 22.w,
                  height: 35.h,
                ),
                label: "Settings",
              ),
            ],
          );
        },
      ),
    );
  }
}
