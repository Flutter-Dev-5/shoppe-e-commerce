

import 'package:tf_ecommerce/SRC/Application/Services/api_services.dart';
import 'package:tf_ecommerce/SRC/Data/app_data/data.dart';

class VippsRepo
{


  static Future<Map<String,dynamic>>  sendCode(url)async{


    try{

var headers={"authorization":"Bearer ${Data().clientId}"};

      return await ApiService.get(url,headers: headers).catchError((er){

        throw er;
      });

    }
    catch(e)
    {
      rethrow;
    }



  }

}