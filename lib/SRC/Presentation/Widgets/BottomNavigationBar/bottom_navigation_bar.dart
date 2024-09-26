import 'package:tf_ecommerce/SRC/Presentation/Widgets/Cart/cart_items.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/WishList/wish_list.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/setting.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final List<Widget> _pages = [
    const Dashboard(),
    const WishList(),
    const FlashSaleDetail(
      isDiscountAvailable: true,
    ),
    CartItems(),
    const Setting(),
  ];

  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: _currentIndexNotifier,
        builder: (context, index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: _currentIndexNotifier,
        builder: (context, index, _) {
          return BottomNavigationBar(
            currentIndex: index,
            onTap: (newIndex) {
              _currentIndexNotifier.value = newIndex;
            },
            selectedItemColor: Theme.of(context).cardColor,
            unselectedItemColor: Theme.of(context).primaryColorDark,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  homeIconSvg,
                  color: index == 0
                      ? Theme.of(context).cardColor
                      : Theme.of(context).primaryColorDark,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  favIcon,
                  color: index == 1
                      ? Theme.of(context).cardColor
                      : Theme.of(context).primaryColorDark,
                ),
                label: "About",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  categoriesPNG,
                  color: index == 2
                      ? Theme.of(context).cardColor
                      : Theme.of(context).primaryColorDark,
                  width: 23,
                  height: 23,
                ),
                label: "Product",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  cartIcon,
                  color: index == 3
                      ? Theme.of(context).cardColor
                      : Theme.of(context).primaryColorDark,
                ),
                label: "Contact",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  profileIcon,
                  color: index == 4
                      ? Theme.of(context).cardColor
                      : Theme.of(context).primaryColorDark,
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
