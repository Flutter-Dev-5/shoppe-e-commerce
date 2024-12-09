import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_quick_router/quick_router.dart';
import 'package:tf_ecommerce/SRC/Data/Repositories/vippsrepo.dart';
import 'package:tf_ecommerce/SRC/Data/app_data/data.dart';


class VipsController {
  static ValueNotifier<int> vippsLoading = ValueNotifier(0);
  // static ValueNotifier<TokenModel> tokenDto= ValueNotifier(TokenModel());
  static ValueNotifier<String> errorDto = ValueNotifier("");

  static StreamSubscription? listenerAppLinks;
  static StreamSubscription? listenerInternalAppLinks;
  Future sendCode(url) async {
    try {
      vippsLoading.value = 1;

      await VippsRepo.sendCode(url).then(
              (value,) async {
            print("rawval");
            print(value);
            if (value['errors'] == false) {
              // tokenDto.value=TokenModel.fromJson(value['data']);

              // await SharedPrefs.setLoginToken(value['data']['token']);
              //
              // await SharedPrefs.setUserLoginData(
              //     userRawData: value['data']['member'])
              //     .then((value) {
              //   SharedPrefs.getUserLoginData();
              // }).whenComplete(() {
              //   Future.wait([
              //     LoginController().internalLogin(Data.app.user!.msisdn.toString())
              //   ]);
              // });
              // await SharedPrefs.setUserIdyllLoginData(userRawData: value['data']['member']).then((value) {
              //
              //
              //   SharedPrefs.getUserIdyllLoginData();
              //
              // });

              // await SharedPrefs.setFromVips(val: true).then((v) {
              //   SharedPrefs.getFromVipsVal();
              // });

              vippsLoading.value = 2;
              // log("success true");
              // log(value['data']['token']);


              // AppContext.navigatorKey.currentContext!
              //     .pushAndRemoveUntil(const HomeMaster(), (ff) => false);
              // number.clear();
            } else {
              vippsLoading.value = 3;
              errorDto.value = value['body'];
              // WidgetFunctions.instance.snackBar(
              //     AppContext.navigatorKey.currentContext!,
              //     text: value['body']);
            }
          });
    } catch (e) {
      vippsLoading.value = 3;
      errorDto.value = e.toString();
    }
  }
}