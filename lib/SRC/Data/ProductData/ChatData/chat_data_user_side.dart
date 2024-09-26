import 'package:tf_ecommerce/SRC/exports.dart';

class UserSelectedData {
  static final List<dynamic> userSelectedData = [
    AppStrings.chatWelcomeMessage,
  ];
  static final List<dynamic> whatIsYourIssue = [
    AppStrings.orderIssue,
    AppStrings.itemQuality,
    AppStrings.paymentIssue,
    AppStrings.technicalAssistance,
    AppStrings.other,
  ];

  static final List<dynamic> orderIssueData = [
    AppStrings.iDidNotReceiveMyParcel,
    AppStrings.iWantToCancelMyOrder,
    AppStrings.iWantToReturnMyOrder,
    AppStrings.packageWasDamaged,
    AppStrings.other,
  ];
}
