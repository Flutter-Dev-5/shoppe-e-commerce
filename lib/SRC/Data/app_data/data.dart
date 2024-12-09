
import 'package:tf_ecommerce/SRC/Data/Users/user_data.dart';

class Data with UserData {


  Data._();

  static final Data _instance = Data._();
  factory Data() {
    return _instance;
  }

  init() {

    clientId="e39aa632-a9ca-4ba8-8417-74fac260917d";

  }


}
