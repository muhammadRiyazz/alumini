import 'dart:convert';
import 'dart:developer';

import 'package:alumni_registration/core/api.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

Future<Response> updatememento(
    {required String id, required String img}) async {
        log('updatememento api');

  Response? response;

  final uri = Uri.parse('$baseurl/momento_confirmation');

  try {
    response = await http.post(uri, body:jsonEncode({"user_id":  int.parse(id), "Screenshot": img})
     );
                  log('response dane');

    if (response.statusCode == 200) {
              log('response.statusCode == 200');

      return response;
    } else {
      log('Error: ${response.statusCode}');
      return response;
    }
  } catch (e) {
    log('Exception: $e');
    rethrow; // Optionally rethrow to propagate the error further
  }
}

Future<Response> updatefood(
    {required String id, required String data, required String img}) async {
  log('updatefood api');
  Response? response;

  final uri = Uri.parse('$baseurl/food_confirmation');

  try {
    response = await http.post(uri,
        body:
         jsonEncode( {"user_id": int.parse(id) , "Screenshot": img, "data": jsonEncode(data)})
        
        
        );
                log('response dane');

    if (response.statusCode == 200) {
        log('response.statusCode == 200');

      return response;
    } else {
      log('Error: ${response.statusCode}');
      return response;
    }
  } catch (e) {
    log('Exception: $e');
    rethrow; // Optionally rethrow to propagate the error further
  }
}
