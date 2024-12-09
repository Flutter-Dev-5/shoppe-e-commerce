import 'package:tf_ecommerce/SRC/exports.dart';

class VoucherProgressData {
  static final List<VoucherProgressModel> progressData = [
    VoucherProgressModel(
      isDone: true,
      isProgressing: false,
      progressValue: 0.0,
      imagePath: AppAssets.emptyCart,
      title: AppStrings.firstPurchase,
      description: AppStrings.dummyMessage,
    ),
    VoucherProgressModel(
      isDone: false,
      isProgressing: true,
      progressValue: 0.8,
      imagePath:AppAssets. favIconColoredSVG,
      title: AppStrings.loyalCustomer,
      description: AppStrings.dummyMessage,
    ),
    VoucherProgressModel(
      isDone: false,
      isProgressing: true,
      progressValue: 0.5,
      imagePath: Icons.star,
      title: AppStrings.reviewMaker,
      description: AppStrings.dummyMessage,
    ),
    VoucherProgressModel(
      isDone: false,
      isProgressing: false,
      progressValue: 0.0,
      imagePath: AppAssets.cloudIconSVG,
      title: AppStrings.bigSoul,
      description: AppStrings.dummyMessage,
    ),
    VoucherProgressModel(
      isDone: false,
      isProgressing: false,
      progressValue: 0.0,
      imagePath:AppAssets. tShirtSVGImage,
      title: AppStrings.tShirtCollector,
      description: AppStrings.dummyMessage,
    ),
    VoucherProgressModel(
      isDone: false,
      isProgressing: true,
      progressValue: 0.3,
      imagePath: AppAssets.smileIconSVG,
      title: AppStrings.tenOrders,
      description: AppStrings.dummyMessage,
    ),
  ];
}
