
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;


class ApiService {

  static Future<Map<String, dynamic>> get(String url,
      {Map<String, String>? headers, bool? fromSplash}) async
  {
    try {

      final response = await http.get(
        Uri.parse(url),
        headers: headers ,
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
      print("response valueeeeee");
      print(jsonDecode(response.body));

      return {
        "success": false,
        "status": "${response.statusCode} ${response.reasonPhrase}",
        "body": jsonDecode(response.body)['message'],
      };
    } on SocketException catch (e) {
      // print('in socet');
      // Handle SocketException here.
      return {"success": false, "body": 'No Internet Connection', "status": 30};

      // You can display an error message to the user or perform other actions.
    } on TimeoutException catch (e) {
      print('in timeout');
      // Handle SocketException here.
      return {"success": false, "body": "Time Out", "status": 31};
    } on HttpException catch (e) {
      // Handle HttpException (e.g., invalid URL) here.
      return {"success": false, "body": "Invalid", "status": 32};
    } catch (e) {
     rethrow;
    }
  }


}