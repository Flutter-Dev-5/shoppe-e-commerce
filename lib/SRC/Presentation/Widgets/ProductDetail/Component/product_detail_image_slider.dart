import 'dart:async';

import 'package:tf_ecommerce/SRC/exports.dart';

class ProductDetailImageSlider extends StatefulWidget {
  @override
  _ProductDetailImageSliderState createState() =>
      _ProductDetailImageSliderState();
}

class _ProductDetailImageSliderState extends State<ProductDetailImageSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  final List<String> _images = [
   AppAssets.image31,
   AppAssets.image11,
   AppAssets.image13,
   AppAssets.image15,
   AppAssets.image31,
   AppAssets.image11,
   AppAssets.image13,
   AppAssets.image15,
  ];

  // @override
  // void initState() {
  //   super.initState();
  //
  //   _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
  //     if (_currentPage < _images.length - 1) {
  //       _currentPage++;
  //     } else {
  //       _currentPage = 0;
  //     }
  //
  //     _pageController.animateToPage(
  //       _currentPage,
  //       duration: Duration(milliseconds: 300),
  //       curve: Curves.easeIn,
  //     );
  //   });
  // }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        80.y,
        ClipRRect(
          child: PageView.builder(
            controller: _pageController,
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return DisplayImage(imageAddress: _images[index]);
            },
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
          ),
        ),
        10.y,
        Positioned(
          bottom: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _images.length; i++) {
      indicators.add(
        _currentPage == i
            ? Container(
                width: 40,
                height: 10,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColorDark,
                ),
              )
            : Container(
                width: 10,
                height: 10,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColorDark.withOpacity(0.15),
                ),
              ),
      );
    }
    return indicators;
  }
}
