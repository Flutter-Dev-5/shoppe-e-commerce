import 'package:tf_ecommerce/SRC/exports.dart';

class CategoryDataHomeScreen {
  static final List<Category> categories = [
    Category(name: "Clothing", itemCount: 109, imageUrl: [
      AppAssets.c1,
      AppAssets.c2,
      AppAssets.c3,
      AppAssets.c4,
    ]),
    Category(name: "Shoes", itemCount: 530, imageUrl: [
     AppAssets. s1,
     AppAssets. s2,
     AppAssets. s3,
     AppAssets. s4,
    ]),
    Category(name: "Bags", itemCount: 87, imageUrl: [
    AppAssets.  b1,
    AppAssets.  b2,
    AppAssets.  b3,
    AppAssets.  b4,
    ]),
    Category(name: "Lingerie", itemCount: 218, imageUrl: [
    AppAssets.  l1,
    AppAssets.  l2,
    AppAssets.  l3,
    AppAssets.  l4,
    ]),
  ];
}
