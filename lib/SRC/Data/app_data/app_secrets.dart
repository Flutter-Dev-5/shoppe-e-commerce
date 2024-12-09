
import 'dart:io';

import 'package:tf_ecommerce/SRC/Data/app_data/data.dart';
import 'package:uuid/uuid.dart';


const paymentKeys = '';
String  loginUrl =
    "https://api.vipps.no/access-management-1.0/access/oauth2/auth?client_id=$clientIDPrd&response_type=code&scope=openid%20name%20phoneNumber%20email%20address%20birthDate%20delegatedConsents&state=$state&redirect_uri=$redirectUriPrd&requested_flow=$requestedFlow&app_callback_uri=$callBackUriPrd";
String state = const Uuid().v4();
String clientIDStg='aa095f8c-2351-4651-a2c8-f680aa47cf28';
String clientIDPrd=Data().clientId??"e39aa632-a9ca-4ba8-8417-74fac260917d";
String redirectUriStg="https://minside.dev.modish.no/modish/vipps";
String redirectUriPrd="https://tvete.modish.app/modish/vipps";

String callBackUriStg="https://minside.dev.modish.no/modish/vipps";
String callBackUriPrd="https://tvete.modish.app/modish/vipps";
String requestedFlow= Platform.isIOS? "automatic_return_from_vipps_app":"app_to_app";
//String gState =const Guid('');