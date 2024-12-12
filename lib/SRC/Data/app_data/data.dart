import 'package:tf_ecommerce/SRC/Data/Users/user_data.dart';

class Data with UserData {
  Data._();

  static final Data _instance = Data._();
  factory Data() {
    return _instance;
  }

  init() {
    clientId = "DZHFv0oJCMxUgvlFwqxtlTsQqkq8kAlJBrp6lK74MnFWfsQU2X3IOYJQhCeq";
  }
}
