import 'package:tf_ecommerce/SRC/Domain/Models/Filter/select_product_category.dart';

class SelectProductCategoryData {
  static final List<SelectProductCategoryModel> categoryData = [
    SelectProductCategoryModel(true, "Popular"),
    SelectProductCategoryModel(false, "Newest"),
    SelectProductCategoryModel(false, "Price High to Low"),
    SelectProductCategoryModel(false, "Price Low to High"),
  ];
}
